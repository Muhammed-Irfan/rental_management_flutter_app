import 'package:flutter/material.dart';
import 'package:rentease/core/theme/theme_imports.dart';
import 'package:rentease/core/utils/extensions.dart';

class AppDropdown<T> extends StatelessWidget {
  final String label;
  final String? hint;
  final T? value;
  final List<T> items;
  final String Function(T) itemLabel;
  final void Function(T?) onChanged;
  final bool isSearchable;
  final String? emptyItemText;
  final void Function(String)? emptyItemOnTap;

  AppDropdown({
    required this.label,
    required this.items,
    required this.itemLabel,
    required this.onChanged,
    super.key,
    this.hint,
    this.value,
    this.isSearchable = false,
    this.emptyItemText,
    this.emptyItemOnTap,
  });

  final SearchController searchController = SearchController();

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyles.title;

    if (isSearchable) {
      return SearchAnchor(
        searchController: searchController,
        viewLeading: IconButton(
          onPressed: () => searchController.closeView(searchController.text),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        builder: (context, controller) {
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Theme.of(context).primaryColor),
              borderRadius: 4.0.borderRadius,
              color: AppColors.textFieldBackground,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
            child: Row(
              children: [
                Text(
                  hint ?? 'Search...',
                  style: const TextStyle(color: AppColors.primary),
                ),
                const Spacer(),
                const Icon(Icons.search, color: AppColors.primary),
              ],
            ),
          );
        },
        suggestionsBuilder: (context, controller) {
          final filteredItems =
              items.where((item) => itemLabel(item).toLowerCase().contains(controller.text.toLowerCase())).toList();

          if (filteredItems.isEmpty && emptyItemText != null) {
            return [
              ListTile(
                title: Text('$emptyItemText "${controller.text}"', style: textStyle),
                onTap: () {
                  controller.closeView(controller.text);
                  emptyItemOnTap?.call(controller.text);
                },
              ),
            ];
          }

          if (filteredItems.isEmpty) {
            return [
              const ListTile(
                title: Text('No results found', style: TextStyle(color: Colors.black)),
              ),
            ];
          }

          return filteredItems.map(
            (item) => ListTile(
              title: Text(itemLabel(item), style: textStyle),
              onTap: () {
                controller.closeView(itemLabel(item));
                onChanged(item);
              },
            ),
          );
        },
      );
    }

    return DropdownMenu<T>(
      label: Text(label),
      hintText: hint,
      initialSelection: value,
      textStyle: textStyle,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.textFieldBackground,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Theme.of(context).primaryColor,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 14.0,
        ),
      ),
      menuStyle: MenuStyle(
        backgroundColor: WidgetStateProperty.all(AppColors.textFieldBackground),
        padding: WidgetStateProperty.all(
          const EdgeInsets.symmetric(vertical: 8),
        ),
        elevation: WidgetStateProperty.all(8),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      dropdownMenuEntries: items.map((item) {
        return DropdownMenuEntry<T>(
          value: item,
          label: itemLabel(item),
          style: ButtonStyle(
            padding: WidgetStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
            ),
            textStyle: WidgetStateProperty.all(textStyle),
          ),
        );
      }).toList(),
      onSelected: onChanged,
      width: MediaQuery.of(context).size.width - 32, // Full width minus padding
      trailingIcon: const Icon(Icons.keyboard_arrow_down),
      selectedTrailingIcon: const Icon(Icons.keyboard_arrow_up),
    );
  }
}
