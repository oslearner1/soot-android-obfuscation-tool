.class public Landroid/support/v4/view/a/u;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/view/a/u;->a:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/view/a/u;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static addUnderlineText(Landroid/content/Context;Lcom/vivo/PCTools/view/HandyTextView;II)V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/view/HandyTextView;->setFocusable(Z)V

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/view/HandyTextView;->setClickable(Z)V

    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Lcom/vivo/PCTools/view/HandyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/UnderlineSpan;

    invoke-direct {v1}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v2, 0x21

    invoke-virtual {v0, v1, p2, p3, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, v0}, Lcom/vivo/PCTools/view/HandyTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static compareWithVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 v3, 0x0

    new-array v1, v3, [Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    const-string v1, "\\."

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :goto_0
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    array-length v1, v6

    array-length v2, v0

    if-le v1, v2, :cond_2

    array-length v1, v6

    :goto_1
    move v4, v3

    move v2, v3

    :goto_2
    if-lt v4, v1, :cond_3

    :cond_1
    move v0, v2

    return v0

    :cond_2
    array-length v1, v0

    goto :goto_1

    :cond_3
    array-length v2, v6

    if-lt v4, v2, :cond_4

    move v2, v3

    :goto_3
    array-length v5, v0

    if-lt v4, v5, :cond_5

    move v5, v3

    :goto_4
    sub-int v7, v2, v5

    if-nez v7, :cond_6

    move v2, v3

    :goto_5
    if-nez v2, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    aget-object v2, v6, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_5
    aget-object v5, v0, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    goto :goto_4

    :cond_6
    sub-int v7, v2, v5

    sub-int/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int v2, v7, v2

    goto :goto_5

    :cond_7
    move-object v6, v1

    goto :goto_0
.end method

.method public static fomatSize(Ljava/lang/Long;)Ljava/lang/String;
    .locals 4

    const-wide/16 v2, 0x400

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    div-long/2addr v0, v2

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "M"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAge(III)I
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p0, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_2

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-lt v1, p2, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    if-gez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, p0

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-le v1, p1, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, p0

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    sub-int/2addr v0, p0

    goto :goto_0
.end method

.method public static getConstellation(II)Ljava/lang/String;
    .locals 5

    const/16 v4, 0xc

    const/16 v3, 0xb

    new-array v0, v4, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u6c34\u74f6\u5ea7"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u53cc\u9c7c\u5ea7"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u767d\u7f8a\u5ea7"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u91d1\u725b\u5ea7"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u53cc\u5b50\u5ea7"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u5de8\u87f9\u5ea7"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u72ee\u5b50\u5ea7"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u5904\u5973\u5ea7"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u5929\u79e4\u5ea7"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5929\u874e\u5ea7"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5c04\u624b\u5ea7"

    aput-object v2, v0, v1

    const-string v1, "\u9b54\u7faf\u5ea7"

    aput-object v1, v0, v3

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aget v1, v1, p0

    if-ge p1, v1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    if-ltz p0, :cond_1

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_1
    aget-object v0, v0, v3

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x14
        0x13
        0x15
        0x15
        0x15
        0x16
        0x17
        0x17
        0x17
        0x17
        0x16
        0x16
    .end array-data
.end method

.method public static getCountryCodeBracketsInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, ")"

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    if-nez p1, :cond_0

    move-object p1, p0

    goto :goto_0
.end method

.method public static getJson(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "json/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    invoke-static {v1}, Landroid/support/v4/view/a/u;->readTextFile(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v1, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_3
    throw v0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method public static getRandomNumStr(I)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p0, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNull(Landroid/widget/EditText;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static obtain(IIZI)Landroid/support/v4/view/a/u;
    .locals 2

    new-instance v0, Landroid/support/v4/view/a/u;

    invoke-static {}, Landroid/support/v4/view/a/k;->a()Landroid/support/v4/view/a/p;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2, p3}, Landroid/support/v4/view/a/p;->obtainCollectionInfo(IIZI)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/a/u;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static readTextFile(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string v0, ""

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    const-string v4, "UTF-8"

    invoke-direct {v3, p0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :goto_1
    return-object v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method public static trimAll(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/support/v4/view/a/u;->trimRight(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/a/u;->trimLeft(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimLeft(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/^\\s*/g"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static trimRight(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "/\\s*$/g"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final getColumnCount()I
    .locals 2

    invoke-static {}, Landroid/support/v4/view/a/k;->a()Landroid/support/v4/view/a/p;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/a/u;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/p;->getCollectionInfoColumnCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final getRowCount()I
    .locals 2

    invoke-static {}, Landroid/support/v4/view/a/k;->a()Landroid/support/v4/view/a/p;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/a/u;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/p;->getCollectionInfoRowCount(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final isHierarchical()Z
    .locals 2

    invoke-static {}, Landroid/support/v4/view/a/k;->a()Landroid/support/v4/view/a/p;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/view/a/u;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/p;->isCollectionInfoHierarchical(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
