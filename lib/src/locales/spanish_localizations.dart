import 'package:shadcn_flutter/shadcn_flutter.dart';

class SpanishShadcnLocalizations extends ShadcnLocalizations {
  const SpanishShadcnLocalizations();
  static const ShadcnLocalizations instance = SpanishShadcnLocalizations();

  @override
  Map<String, String> get localizedMimeTypes => {
        'audio/aac': 'Audio AAC',
        'application/x-abiword': 'Documento de AbiWord',
        'image/apng': 'Gráficos de Red Portátiles Animados',
        'application/x-freearc': 'Documento de Archivo',
        'image/avif': 'Imagen AVIF',
        'video/x-msvideo': 'AVI: Intercalar Audio y Video',
        'application/vnd.amazon.ebook': 'Formato de eBook de Amazon Kindle',
        'application/octet-stream': 'Datos Binarios',
        'image/bmp': 'Gráficos Bitmap de Windows OS/2',
        'application/x-bzip': 'Archivo BZip',
        'application/x-bzip2': 'Archivo BZip2',
        'application/x-cdf': 'Audio CD',
        'application/x-csh': 'Script C-Shell',
        'text/css': 'Hojas de Estilo en Cascada (CSS)',
        'text/csv': 'Valores Separados por Comas (CSV)',
        'application/msword': 'Microsoft Word',
        'application/vnd.openxmlformats-officedocument.wordprocessingml.document':
            'Microsoft Word (OpenXML)',
        'application/vnd.ms-fontobject': 'Fuentes OpenType Embebidas de MS',
        'application/epub+zip': 'Publicación Electrónica (EPUB)',
        'application/gzip': 'Archivo Comprimido GZip',
        'image/gif': 'Formato de Intercambio de Gráficos (GIF)',
        'text/html': 'Lenguaje de Marcado de Hipertexto (HTML)',
        'image/vnd.microsoft.icon': 'Formato de Icono',
        'text/calendar': 'Formato iCalendar',
        'application/java-archive': 'Archivo Java (JAR)',
        'image/jpeg': 'Imágenes JPEG',
        'text/javascript': 'JavaScript',
        'application/json': 'Formato JSON',
        'application/ld+json': 'Formato JSON-LD',
        'audio/midi': 'Interfaz Digital de Instrumentos Musicales (MIDI)',
        'audio/x-midi': 'Interfaz Digital de Instrumentos Musicales (MIDI)',
        'audio/mpeg': 'Audio MP3',
        'video/mp4': 'Video MP4',
        'video/mpeg': 'Video MPEG',
        'application/vnd.apple.installer+xml':
            'Paquete de Instalación de Apple',
        'application/vnd.oasis.opendocument.presentation':
            'Documento de Presentación OpenDocument',
        'application/vnd.oasis.opendocument.spreadsheet':
            'Documento de Hoja de Cálculo OpenDocument',
        'application/vnd.oasis.opendocument.text':
            'Documento de Texto OpenDocument',
        'audio/ogg': 'Audio Ogg',
        'video/ogg': 'Video Ogg',
        'application/ogg': 'Ogg',
        'font/otf': 'Fuente OpenType',
        'image/png': 'Gráficos de Red Portátiles',
        'application/pdf': 'Formato de Documento Portátil de Adobe (PDF)',
        'application/x-httpd-php':
            'Preprocesador de Hipertexto (Página de Inicio Personal)',
        'application/vnd.ms-powerpoint': 'Microsoft PowerPoint',
        'application/vnd.openxmlformats-officedocument.presentationml.presentation':
            'Microsoft PowerPoint (OpenXML)',
        'application/vnd.rar': 'Archivo RAR',
        'application/rtf': 'Formato de Texto Enriquecido (RTF)',
        'application/x-sh': 'Script Bourne Shell',
        'image/svg+xml': 'Gráficos Vectoriales Escalables (SVG)',
        'application/x-tar': 'Archivo de Cinta (TAR)',
        'image/tiff': 'Formato de Archivo de Imagen Etiquetada (TIFF)',
        'video/mp2t': 'Transmisión de Video MPEG',
        'font/ttf': 'Fuente TrueType',
        'text/plain': 'Texto',
        'application/vnd.visio': 'Microsoft Visio',
        'audio/wav': 'Formato de Audio de Onda',
        'audio/webm': 'Audio WEBM',
        'video/webm': 'Video WEBM',
        'image/webp': 'Imagen WEBP',
        'font/woff': 'Formato de Fuente Abierto para la Web (WOFF)',
        'font/woff2': 'Formato de Fuente Abierto para la Web (WOFF)',
        'application/xhtml+xml': 'XHTML',
        'application/vnd.ms-excel': 'Microsoft Excel',
        'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet':
            'Microsoft Excel (OpenXML)',
        'application/xml': 'XML',
        'application/vnd.mozilla.xul+xml': 'XUL',
        'application/zip': 'Archivo ZIP',
        'video/3gpp': 'Contenedor de Audio/Video 3GPP',
        'audio/3gpp': 'Contenedor de Audio/Video 3GPP',
        'video/3gpp2': 'Contenedor de Audio/Video 3GPP2',
        'audio/3gpp2': 'Contenedor de Audio/Video 3GPP2',
        'application/x-7z-compressed': 'Archivo 7-Zip',
      };

  @override
  String get commandSearch => 'Escribe un comando o busca...';

  @override
  String get commandEmpty => 'No se encontraron resultados.';

  @override
  String get formNotEmpty => 'Este campo no puede estar vació';

  @override
  String get invalidValue => 'Valor invalido';

  @override
  String get invalidEmail => 'Correo electrónico invalido';

  @override
  String get invalidURL => 'URL no válida';

  @override
  String formatNumber(double value) {
    // if the value is an integer, return it as an integer
    if (value == value.toInt()) {
      return value.toInt().toString();
    }
    return value.toString();
  }

  @override
  String formLessThan(double value) =>
      'Debe ser menor que ${formatNumber(value)}';

  @override
  String formGreaterThan(double value) =>
      'Debe ser mayor que ${formatNumber(value)}';

  @override
  String formLessThanOrEqualTo(double value) =>
      'Debe ser menor o igual que ${formatNumber(value)}';

  @override
  String formGreaterThanOrEqualTo(double value) =>
      'Debe ser mayor o igual que ${formatNumber(value)}';

  @override
  String formBetweenInclusively(double min, double max) =>
      'Debe estar entre ${formatNumber(min)} y ${formatNumber(max)} (inclusive)';

  @override
  String formBetweenExclusively(double min, double max) =>
      'Debe estar entre ${formatNumber(min)} y ${formatNumber(max)} (exclusivo)';

  @override
  String formLengthLessThan(int value) =>
      'Debe tener al menos $value caracteres';

  @override
  String formLengthGreaterThan(int value) =>
      'Debe tener como máximo $value caracteres';

  @override
  String get formPasswordDigits => 'Debe contener al menos un dígito';

  @override
  String get formPasswordLowercase => 'Debe tener al menos una letra minúscula';

  @override
  String get formPasswordUppercase => 'Debe tener al menos una letra mayúscula';

  @override
  String get formPasswordSpecial =>
      'Debe contener al menos un carácter especial';

  @override
  String get abbreviatedMonday => 'Lu';

  @override
  String get abbreviatedTuesday => 'Ma';

  @override
  String get abbreviatedWednesday => 'Mi';

  @override
  String get abbreviatedThursday => 'Ju';

  @override
  String get abbreviatedFriday => 'Vi';

  @override
  String get abbreviatedSaturday => 'Sa';

  @override
  String get abbreviatedSunday => 'Do';

  @override
  String get monthJanuary => 'Enero';

  @override
  String get monthFebruary => 'Febrero';

  @override
  String get monthMarch => 'Marzo';

  @override
  String get monthApril => 'Abril';

  @override
  String get monthMay => 'Mayo';

  @override
  String get monthJune => 'Junio';

  @override
  String get monthJuly => 'Julio';

  @override
  String get monthAugust => 'Agosto';

  @override
  String get monthSeptember => 'Septiembre';

  @override
  String get monthOctober => 'Octubre';

  @override
  String get monthNovember => 'Noviembre';

  @override
  String get monthDecember => 'Diciembre';

  @override
  String get buttonCancel => 'Cancelar';

  @override
  String get buttonOk => 'Aceptar';

  @override
  String get buttonClose => 'Cerrar';

  @override
  String get buttonSave => 'Guardar';

  @override
  String get buttonReset => 'Restablecer';

  @override
  String formatDateTime(DateTime dateTime,
      {bool showDate = true,
      bool showTime = true,
      bool showSeconds = false,
      bool use24HourFormat = true}) {
    var result = '';
    if (showDate) {
      result +=
          '${dateTime.day} de ${getMonth(dateTime.month)} de ${dateTime.year}';
    }
    if (showTime) {
      if (use24HourFormat) {
        if (result.isNotEmpty) {
          result += ' ';
        }
        result += '${dateTime.hour}:${dateTime.minute}';
        if (showSeconds) {
          result += ':${dateTime.second}';
        }
      } else {
        if (result.isNotEmpty) {
          result += ' ';
        }
        var hour = dateTime.hour;
        if (hour > 12) {
          hour -= 12;
          result += '$hour:${dateTime.minute} PM';
        } else {
          result += '$hour:${dateTime.minute} AM';
        }
      }
    }
    return result;
  }

  @override
  String get placeholderDatePicker => 'Selecciona una fecha';

  @override
  String get placeholderColorPicker => 'Selecciona un color';

  @override
  String get buttonNext => 'Siguiente';

  @override
  String get buttonPrevious => 'Anterior';

  @override
  String get searchPlaceholderCountry => 'Buscar país...';

  @override
  String get emptyCountryList => 'No se encontraron países';

  @override
  String get placeholderTimePicker => 'Selecciona una hora';

  @override
  String formatTimeOfDay(TimeOfDay time,
      {bool use24HourFormat = true, bool showSeconds = false}) {
    var result = '';
    if (use24HourFormat) {
      result +=
          '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';
      if (showSeconds) {
        result += ':${time.second.toString().padLeft(2, '0')}';
      }
    } else {
      var hour = time.hour;
      if (hour > 12) {
        hour -= 12;
        if (showSeconds) {
          result +=
              '${hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}:${time.second.toString().padLeft(2, '0')} PM';
        } else {
          result +=
              '${hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')} PM';
        }
      } else {
        if (showSeconds) {
          result +=
              '${hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}:${time.second.toString().padLeft(2, '0')} AM';
        } else {
          result +=
              '${hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')} AM';
        }
      }
    }
    return result;
  }

  @override
  String get timeHour => 'Hora';

  @override
  String get timeMinute => 'Minuto';

  @override
  String get timeSecond => 'Segundo';

  @override
  String get timeAM => 'AM';

  @override
  String get timePM => 'PM';

  @override
  String get toastSnippetCopied => 'Copiado al portapapeles';

  @override
  String get datePickerSelectYear => 'Selecciona un año';

  @override
  String get abbreviatedJanuary => 'Ene';

  @override
  String get abbreviatedFebruary => 'Feb';

  @override
  String get abbreviatedMarch => 'Mar';

  @override
  String get abbreviatedApril => 'Abr';

  @override
  String get abbreviatedMay => 'May';

  @override
  String get abbreviatedJune => 'Jun';

  @override
  String get abbreviatedJuly => 'Jul';

  @override
  String get abbreviatedAugust => 'Ago';

  @override
  String get abbreviatedSeptember => 'Sep';

  @override
  String get abbreviatedOctober => 'Oct';

  @override
  String get abbreviatedNovember => 'Nov';

  @override
  String get abbreviatedDecember => 'Dic';

  @override
  String get colorRed => 'Rojo';

  @override
  String get colorGreen => 'Verde';

  @override
  String get colorBlue => 'Azul';

  @override
  String get colorAlpha => 'Alfa';

  @override
  String get menuCut => 'Cortar';

  @override
  String get menuCopy => 'Copiar';

  @override
  String get menuPaste => 'Pegar';

  @override
  String get menuSelectAll => 'Seleccionar todo';

  @override
  String get menuUndo => 'Deshacer';

  @override
  String get menuRedo => 'Rehacer';

  @override
  String get menuDelete => 'Eliminar';

  @override
  String get menuShare => 'Compartir';

  @override
  String get menuSearchWeb => 'Buscar en la web';

  @override
  String get menuLiveTextInput => 'Entrada de texto en vivo';

  @override
  String get refreshTriggerPull => 'Desliza hacia abajo para actualizar';

  @override
  String get refreshTriggerRelease => 'Suelta para actualizar';

  @override
  String get refreshTriggerRefreshing => 'Actualizando...';

  @override
  String get refreshTriggerComplete => 'Actualización completa';

  @override
  String get colorPickerTabRecent => 'Recientes';

  @override
  String get colorPickerTabRGB => 'RGB';

  @override
  String get colorPickerTabHSV => 'HSV';

  @override
  String get colorPickerTabHSL => 'HSL';

  @override
  String get colorHue => 'Tono';

  @override
  String get colorSaturation => 'Sat';

  @override
  String get colorValue => 'Val';

  @override
  String get colorLightness => 'Lum';

  @override
  String get dataTableColumns => 'Columnas';

  @override
  String get dataTableNext => 'Siguiente';

  @override
  String get dataTablePrevious => 'Anterior';

  @override
  String dataTableSelectedRows(int count, int total) {
    return '$count de $total fila(s) seleccionada(s).';
  }
}
