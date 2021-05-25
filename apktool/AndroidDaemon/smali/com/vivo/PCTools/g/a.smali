.class public final Lcom/vivo/PCTools/g/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final UseReflectGetInstallLocation(Landroid/content/pm/ApplicationInfo;)I
    .locals 3

    const-class v0, Landroid/content/pm/ApplicationInfo;

    const-string v1, "installLocation"

    const/16 v2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/vivo/PCTools/util/a;->getFieldValue(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method final a(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_install_location"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vivo/PCTools/g/a;->a:I

    return-void
.end method

.method public final check(Landroid/content/pm/ApplicationInfo;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "APPChecker"

    const-string v3, "come to check application "

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/vivo/PCTools/g/a;->UseReflectGetInstallLocation(Landroid/content/pm/ApplicationInfo;)I

    move-result v2

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x40000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-nez v3, :cond_4

    iget v3, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    if-nez v2, :cond_3

    :cond_2
    :goto_1
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/vivo/PCTools/g/a;->isLimitAppInner(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/vivo/PCTools/g/a;->a:I

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method public final isLimitAppInner(Ljava/lang/String;)Z
    .locals 11

    const/4 v9, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v0, "APPChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "apkPath is : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0}, Landroid/util/DisplayMetrics;->setToDefaults()V

    const/4 v1, 0x0

    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addAssetPath"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "AndroidManifest.xml"

    invoke-virtual {v0, v1, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    move v2, v1

    move v1, v3

    :goto_0
    if-ne v2, v4, :cond_1

    move v0, v1

    :cond_0
    :goto_1
    const-string v1, "APPChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "return isLimit value is : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    packed-switch v2, :pswitch_data_0

    :cond_2
    move v2, v1

    :cond_3
    :try_start_2
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v1

    move v10, v1

    move v1, v2

    move v2, v10

    goto :goto_0

    :pswitch_0
    :try_start_3
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    if-ne v2, v9, :cond_2

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "intent-filter"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v2

    if-eqz v2, :cond_2

    move v2, v1

    move v1, v3

    :cond_4
    :goto_2
    :try_start_4
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    if-eq v6, v4, :cond_3

    packed-switch v6, :pswitch_data_1

    :cond_5
    :goto_3
    if-eqz v5, :cond_4

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v7

    if-ne v7, v9, :cond_4

    const-string v7, "intent-filter"

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    move v1, v3

    goto :goto_2

    :pswitch_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "action"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_7

    const-string v7, "http://schemas.android.com/apk/res/android"

    const-string v8, "name"

    invoke-interface {v5, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "android.view.InputMethod"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "android.service.wallpaper.WallpaperService"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    if-nez v2, :cond_7

    move v2, v4

    goto :goto_3

    :cond_7
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "category"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "http://schemas.android.com/apk/res/android"

    const-string v8, "name"

    invoke-interface {v5, v7, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "android.intent.category.HOME"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    move v1, v4

    :cond_8
    if-nez v2, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "android.intent.category.DEFAULT"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v1, :cond_5

    move v2, v4

    goto/16 :goto_3

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move v0, v3

    :goto_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/content/res/AssetManager;->close()V

    goto/16 :goto_1

    :catch_1
    move-exception v1

    move-object v2, v0

    move v0, v3

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move v0, v1

    move-object v1, v10

    goto :goto_4

    :catch_3
    move-exception v1

    move-object v10, v0

    move v0, v2

    move-object v2, v10

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method
