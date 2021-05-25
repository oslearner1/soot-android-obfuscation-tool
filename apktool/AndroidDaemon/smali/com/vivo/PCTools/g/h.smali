.class public Lcom/vivo/PCTools/g/h;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/vivo/PCTools/g/a;

.field private b:I

.field private c:[Landroid/graphics/Bitmap;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/lang/Integer;

.field private f:Ljava/lang/Integer;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1f4

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/vivo/PCTools/g/h;->c:[Landroid/graphics/Bitmap;

    const-class v0, Lcom/vivo/PCTools/g/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/g/h;->i:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)[B
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public CreateXml(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 15

    iget-object v2, p0, Lcom/vivo/PCTools/g/h;->i:Ljava/lang/String;

    const-string v3, "come to CreateXml"

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    iput v2, p0, Lcom/vivo/PCTools/g/h;->b:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/PCTools/g/h;->d:Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/PCTools/g/h;->e:Ljava/lang/Integer;

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-interface {v6, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v4, "UTF-8"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v4, ""

    const-string v5, "apps"

    invoke-interface {v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/vivo/PCTools/g/h;->GetPackageInfo(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v5

    new-instance v4, Lcom/vivo/PCTools/g/a;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Lcom/vivo/PCTools/g/a;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vivo/PCTools/g/h;->a:Lcom/vivo/PCTools/g/a;

    iget-object v4, p0, Lcom/vivo/PCTools/g/h;->a:Lcom/vivo/PCTools/g/a;

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/vivo/PCTools/g/a;->a(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/vivo/PCTools/g/h;->a:Lcom/vivo/PCTools/g/a;

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v7}, Lcom/vivo/PCTools/g/a;->check(Landroid/content/pm/ApplicationInfo;)Z

    move-result v7

    iget-object v8, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v9, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v4, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget v4, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v11, 0x40000

    and-int/2addr v4, v11

    const/high16 v11, 0x40000

    if-ne v4, v11, :cond_0

    const/4 v4, 0x2

    :goto_0
    iget-object v11, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v11, :cond_1

    iget-object v11, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v11, p0, Lcom/vivo/PCTools/g/h;->g:Ljava/lang/String;

    :goto_1
    iget v11, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    if-lez v11, :cond_2

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/PCTools/g/h;->f:Ljava/lang/Integer;

    :goto_2
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/vivo/PCTools/g/h;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v12, p0, Lcom/vivo/PCTools/g/h;->c:[Landroid/graphics/Bitmap;

    iget v13, p0, Lcom/vivo/PCTools/g/h;->b:I

    aput-object v5, v12, v13

    invoke-static {v5}, Lcom/vivo/PCTools/g/h;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v5

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/PCTools/g/h;->e:Ljava/lang/Integer;

    iget v5, p0, Lcom/vivo/PCTools/g/h;->b:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/vivo/PCTools/g/h;->b:I

    iget-object v5, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v9, ""

    const-string v12, "app"

    invoke-interface {v6, v9, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, ""

    const-string v12, "name"

    invoke-interface {v6, v9, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v9, ""

    const-string v11, "pname"

    invoke-interface {v6, v9, v11, v8}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "qstore"

    const-string v11, "0"

    invoke-interface {v6, v8, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "vcode"

    iget-object v11, p0, Lcom/vivo/PCTools/g/h;->f:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v8, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "vname"

    iget-object v11, p0, Lcom/vivo/PCTools/g/h;->g:Ljava/lang/String;

    invoke-interface {v6, v8, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "iconoffset"

    iget-object v11, p0, Lcom/vivo/PCTools/g/h;->d:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v8, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "iconlen"

    iget-object v11, p0, Lcom/vivo/PCTools/g/h;->e:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v8, v9, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v8, ""

    const-string v9, "apppath"

    invoke-interface {v6, v8, v9, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, ""

    const-string v8, "ismoveable"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v5, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v5, ""

    const-string v7, "moveflag"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v5, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "apksize"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v4, v5, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v4, ""

    const-string v5, "app"

    invoke-interface {v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v4, p0, Lcom/vivo/PCTools/g/h;->d:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/vivo/PCTools/g/h;->e:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Lcom/vivo/PCTools/g/h;->d:Ljava/lang/Integer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    const-string v4, ""

    const-string v5, "apps"

    invoke-interface {v6, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/vivo/PCTools/g/h;->h:I

    iget-object v2, p0, Lcom/vivo/PCTools/g/h;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "xml fileLength is : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/vivo/PCTools/g/h;->h:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lcom/vivo/PCTools/g/h;->addBitmap(Ljava/lang/String;)Z

    return-void

    :cond_0
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1
    :try_start_3
    const-string v11, "1.0"

    iput-object v11, p0, Lcom/vivo/PCTools/g/h;->g:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v4

    :goto_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :cond_2
    const/4 v5, 0x1

    :try_start_4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcom/vivo/PCTools/g/h;->f:Ljava/lang/Integer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2

    :catch_1
    move-exception v2

    move-object v3, v5

    move-object v14, v4

    move-object v4, v2

    move-object v2, v14

    goto :goto_4

    :catch_2
    move-exception v2

    move-object v14, v2

    move-object v2, v4

    move-object v4, v14

    goto :goto_4
.end method

.method public GetPackageInfo(Ljava/lang/String;Landroid/content/Context;)Landroid/content/pm/PackageInfo;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_1
.end method

.method public ParaserAddApp(Landroid/content/Intent;Landroid/content/Context;)Lcom/vivo/PCTools/q/a/a;
    .locals 5

    iget-object v0, p0, Lcom/vivo/PCTools/g/h;->i:Ljava/lang/String;

    const-string v1, "come from ParaserAddApp "

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/vivo/PCTools/g/h;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "pkgName = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    :try_start_0
    sget-object v0, Lcom/vivo/PCTools/BaseApplication;->c:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vivo/PCTools/g/h;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "add package name = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {p0, v2, p2}, Lcom/vivo/PCTools/g/h;->SendPackageToPc(Ljava/lang/String;Landroid/content/Context;)Lcom/vivo/PCTools/q/a/a;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    move-object v0, v1

    goto :goto_1
.end method

.method public SendPackageToPc(Ljava/lang/String;Landroid/content/Context;)Lcom/vivo/PCTools/q/a/a;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x4

    new-instance v1, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v1}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-static {}, Lcom/vivo/PCTools/Pcserver/j;->getMsgId()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vivo/PCTools/BaseApplication;->a:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".programestore_send_storage_"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".xml"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v4, v0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/vivo/PCTools/g/h;->h:I

    invoke-virtual {p0, v3, p1, p2}, Lcom/vivo/PCTools/g/h;->CreateXml(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    iget-object v0, p0, Lcom/vivo/PCTools/g/h;->i:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "msgId = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {v1, v7}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {v1, v8}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v1, v7}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    new-array v0, v7, [B

    iget v2, p0, Lcom/vivo/PCTools/g/h;->h:I

    invoke-static {v2, v0, v8}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByte(I[BI)V

    invoke-virtual {v1, v0, v7}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    invoke-virtual {v1, v4}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0, v4}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public addBitmap(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/vivo/PCTools/g/h;->b:I

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :goto_0
    iget v3, p0, Lcom/vivo/PCTools/g/h;->b:I

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/vivo/PCTools/g/h;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bitmapNum22 is : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/vivo/PCTools/g/h;->b:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :goto_1
    return v0

    :cond_0
    iget-object v3, p0, Lcom/vivo/PCTools/g/h;->c:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/vivo/PCTools/g/h;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method
