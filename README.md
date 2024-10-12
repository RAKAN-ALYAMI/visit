# وصف السكربت

مرحبًا،

أود أن أشارككم تفاصيل حول السكربت الذي قمنا بتطويره ليتناسب مع احتياجاتكم.

هذا السكربت مخصص لتسجيل زيارات الموقع وإظهار الإحصائيات بشكل منظم وسهل. يقوم السكربت بتسجيل معلومات هامة لكل زائر، مثل عنوان IP، الدولة، نوع الجهاز، نوع المتصفح، والرابط الذي أتى منه الزائر. كما يتم حفظ هذه البيانات في قاعدة بيانات، مما يسمح لنا بتحليل وفهم سلوك الزوار بشكل أفضل.

## خطوات الإعداد

1. **تعديل ملف الكونفج**: قم بتعديل ملف `config.php` ليحتوي على بيانات الاتصال بقاعدة البيانات الخاصة بك.
2. **رفع قاعدة البيانات**: قم برفع ملف قاعدة البيانات `visits.sql` إلى قاعدة البيانات الخاصة بك لإنشاء الجدول اللازم لتسجيل الزيارات.
3. **إضافة كود التضمين**: قم بإضافة الكود التالي إلى ملف الهيدر أو أي ملف مناسب في موقعك:
   ```php
   include 'init.php';
   ```
   هذا يضمن تسجيل الزيارات في كل مرة يتم فيها تحميل الصفحة.
4. **الدخول إلى لوحة التحكم**: يمكنك الوصول إلى صفحة `dashboard.php` لمشاهدة إحصائيات الزيارات.

## لوحة التحكم

![لوحة التحكم - إحصائيات الزيارات](visits.png)

يمكن الوصول إلى لوحة تحكم إحصائيات الزيارات من خلال صفحة مخصصة، حيث تعرض عدد الزيارات، الدولة الأكثر زيارة، ونوع الجهاز الأكثر استخدامًا، بالإضافة إلى تفاصيل كل زيارة. تم تصميم لوحة التحكم باستخدام Bootstrap لتوفير تجربة مستخدم بسيطة ومنظمة، مع دعم كامل للغة العربية واتجاه النصوص من اليمين إلى اليسار.

## فوائد السكربت

هذا السكربت يمنحكم رؤى واضحة حول أداء الموقع وسلوك الزوار، مما يساعد على تحسين المحتوى والتفاعل مع الزوار بشكل أفضل.

## استفسارات

إذا كان لديكم أي استفسارات أو طلبات تخص السكربت، يرجى إخباري، وسأكون سعيدًا بتقديم المساعدة.

## الحقوق والترخيص

حقوق النشر محفوظة لـ RAKAN ALYAMI.

هذا المشروع مرخص تحت رخصة MIT.

لأي استفسارات أو دعم، يمكنك التواصل عبر:

    Email / البريد الإلكتروني: rakan7777@gmail.com
    Telegram / تليجرام: r7000r
