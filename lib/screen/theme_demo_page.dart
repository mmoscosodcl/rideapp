import 'package:flutter/material.dart';

class ThemeDemoPage extends StatelessWidget {
  const ThemeDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Accede al ColorScheme y TextTheme del tema actual
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Demostración del Tema'),
        // El color del AppBar y el título ya se toman del AppBarTheme
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- Sección 1: Colores ---
            Text('Colores del Tema', style: textTheme.headlineSmall),
            const SizedBox(height: 16),
            Wrap( // Wrap para que los chips se ajusten automáticamente
              spacing: 8.0, // Espacio horizontal entre chips
              runSpacing: 8.0, // Espacio vertical entre líneas de chips
              children: [
                _ColorChip(color: colorScheme.primary, label: 'Primary'),
                _ColorChip(color: colorScheme.onPrimary, label: 'On Primary'),
                _ColorChip(color: colorScheme.primaryContainer, label: 'Primary Container'),
                _ColorChip(color: colorScheme.onPrimaryContainer, label: 'On Primary Container'),
                _ColorChip(color: colorScheme.secondary, label: 'Secondary'),
                _ColorChip(color: colorScheme.onSecondary, label: 'On Secondary'),
                _ColorChip(color: colorScheme.secondaryContainer, label: 'Secondary Container'),
                _ColorChip(color: colorScheme.onSecondaryContainer, label: 'On Secondary Container'),
                _ColorChip(color: colorScheme.tertiary, label: 'Tertiary'),
                _ColorChip(color: colorScheme.onTertiary, label: 'On Tertiary'),
                _ColorChip(color: colorScheme.tertiaryContainer, label: 'Tertiary Container'),
                _ColorChip(color: colorScheme.onTertiaryContainer, label: 'On Tertiary Container'),
                _ColorChip(color: colorScheme.error, label: 'Error'),
                _ColorChip(color: colorScheme.onError, label: 'On Error'),
                _ColorChip(color: colorScheme.errorContainer, label: 'Error Container'),
                _ColorChip(color: colorScheme.onErrorContainer, label: 'On Error Container'),
                _ColorChip(color: colorScheme.background, label: 'Background'),
                _ColorChip(color: colorScheme.onBackground, label: 'On Background'),
                _ColorChip(color: colorScheme.surface, label: 'Surface'),
                _ColorChip(color: colorScheme.onSurface, label: 'On Surface'),
                _ColorChip(color: colorScheme.surfaceVariant, label: 'Surface Variant'),
                _ColorChip(color: colorScheme.onSurfaceVariant, label: 'On Surface Variant'),
                _ColorChip(color: colorScheme.outline, label: 'Outline'),
                _ColorChip(color: colorScheme.shadow, label: 'Shadow'),
                _ColorChip(color: colorScheme.inverseSurface, label: 'Inverse Surface'),
                _ColorChip(color: colorScheme.onInverseSurface, label: 'On Inverse Surface'),
                _ColorChip(color: colorScheme.inversePrimary, label: 'Inverse Primary'),
              ],
            ),

            const Divider(height: 32),

            // --- Sección 2: Tipografía ---
            Text('Tipografía del Tema', style: textTheme.headlineSmall),
            const SizedBox(height: 16),
            Text('Display Large', style: textTheme.displayLarge),
            Text('Display Medium', style: textTheme.displayMedium),
            Text('Display Small', style: textTheme.displaySmall),
            Text('Headline Large', style: textTheme.headlineLarge),
            Text('Headline Medium', style: textTheme.headlineMedium),
            Text('Headline Small', style: textTheme.headlineSmall),
            Text('Title Large', style: textTheme.titleLarge),
            Text('Title Medium', style: textTheme.titleMedium),
            Text('Title Small', style: textTheme.titleSmall),
            Text('Body Large', style: textTheme.bodyLarge),
            Text('Body Medium', style: textTheme.bodyMedium),
            Text('Body Small', style: textTheme.bodySmall),
            Text('Label Large', style: textTheme.labelLarge),
            Text('Label Medium', style: textTheme.labelMedium),
            Text('Label Small', style: textTheme.labelSmall),

            const Divider(height: 32),

            // --- Sección 3: Botones ---
            Text('Botones', style: textTheme.headlineSmall),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Elevated')),
                TextButton(onPressed: () {}, child: const Text('Text')),
                OutlinedButton(onPressed: () {}, child: const Text('Outlined')),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
                FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
              ],
            ),

            const Divider(height: 32),

            // --- Sección 4: Campos de Texto ---
            Text('Campos de Texto', style: textTheme.headlineSmall),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Campo de Texto',
                hintText: 'Introduce tu texto aquí',
                prefixIcon: Icon(Icons.email),
              ),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Campo de Texto Lleno',
                hintText: 'Con borde relleno',
                filled: true,
                prefixIcon: Icon(Icons.search),
              ),
            ),

            const Divider(height: 32),

            // --- Sección 5: Tarjetas y Listas ---
            Text('Tarjetas y Listas', style: textTheme.headlineSmall),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Título de la Tarjeta', style: textTheme.titleMedium),
                    const SizedBox(height: 8),
                    Text(
                      'Este es un texto de ejemplo dentro de una tarjeta. '
                      'Su estilo de fondo y forma vienen del CardTheme.',
                      style: textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: Icon(Icons.account_circle, color: colorScheme.secondary),
              title: const Text('Elemento de Lista'),
              subtitle: const Text('Subtítulo del elemento de lista.'),
              trailing: Icon(Icons.arrow_forward_ios, color: colorScheme.outline),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings, color: colorScheme.secondary),
              title: const Text('Otro Elemento de Lista'),
              subtitle: const Text('Con diferentes iconos.'),
              trailing: Icon(Icons.chevron_right, color: colorScheme.outline),
              onTap: () {},
            ),
            const SizedBox(height: 16),
            Chip(
              avatar: CircleAvatar(child: Text('A', style: TextStyle(color: colorScheme.onPrimary))),
              label: const Text('Chip de ejemplo'),
              backgroundColor: colorScheme.primaryContainer,
              labelStyle: TextStyle(color: colorScheme.onPrimaryContainer),
            ),

             const Divider(height: 32),

            // --- Sección 6: Componentes de Diálogo ---
            Text('Diálogos', style: textTheme.headlineSmall),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: const Text('Título del Diálogo'),
                      content: const Text('Este es un diálogo de ejemplo.'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('Cancelar'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: const Text('Mostrar Diálogo'),
            ),
            const SizedBox(height: 16),
             ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Este es un Snackbar de ejemplo.'),
                    backgroundColor: colorScheme.secondary, // Puedes usar un color del tema
                    action: SnackBarAction(
                      label: 'Deshacer',
                      onPressed: () {
                        // Código para deshacer la acción
                      },
                      textColor: colorScheme.onSecondary,
                    ),
                  ),
                );
              },
              child: const Text('Mostrar Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget auxiliar para mostrar los chips de color
class _ColorChip extends StatelessWidget {
  final Color color;
  final String label;

  const _ColorChip({required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    final bool isDark = color.computeLuminance() < 0.5; // Determina si el color es oscuro
    final Color textColor = isDark ? Colors.white : Colors.black;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20), // Pequeño redondeo para los chips
        border: Border.all(color: Colors.grey.shade300), // Borde suave
      ),
      child: Text(
        label,
        style: TextStyle(color: textColor, fontSize: 12),
      ),
    );
  }
}