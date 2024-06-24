part of '../profile_screen.dart';


class _SettingsItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const _SettingsItem({
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 4.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
        ),
        child: ListTile(
          leading: Icon(icon, color: Colors.orange),
          title: Text(
            label,
            style: AppStyles.latoTextStyle(
              fontSize: 14,
            ),
          ),
          trailing: Icon(Icons.arrow_forward_ios, size: 16),
          onTap: () {},
        ),
      ),
    );
  }
}

class _SettingsList extends StatelessWidget {
  const _SettingsList();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SettingsItem(
            icon: Icons.notifications, label: StringConstant.notifications),
        _SettingsItem(icon: Icons.lock, label: StringConstant.changePassword),
        _SettingsItem(icon: Icons.language, label: StringConstant.language),
        _SettingsItem(icon: Icons.help_outline, label: StringConstant.faqs),
      ],
    );
  }
}
