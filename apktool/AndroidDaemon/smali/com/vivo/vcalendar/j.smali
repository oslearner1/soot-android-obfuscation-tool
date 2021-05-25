.class public final Lcom/vivo/vcalendar/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/net/Uri;

.field private b:Ljava/io/BufferedReader;

.field private c:Ljava/lang/String;

.field private d:I

.field private final e:Landroid/content/Context;

.field private final f:Ljava/util/ArrayList;

.field private final g:Ljava/util/ArrayList;

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/vcalendar/j;->d:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcalendar/j;->f:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcalendar/j;->g:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/vivo/vcalendar/j;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/vivo/vcalendar/j;->e:Landroid/content/Context;

    const-string v0, "VCalFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Constructor: srcUri = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/vcalendar/j;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vivo/vcalendar/j;->b()V

    sget-object v0, Lcom/vivo/vcalendar/component/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/vivo/vcalendar/component/c;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/vcalendar/j;->f:Ljava/util/ArrayList;

    const-string v1, "BEGIN:VEVENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vivo/vcalendar/j;->f:Ljava/util/ArrayList;

    const-string v1, "BEGIN:VTODO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vivo/vcalendar/j;->g:Ljava/util/ArrayList;

    const-string v1, "END:VEVENT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/vivo/vcalendar/j;->g:Ljava/util/ArrayList;

    const-string v1, "END:VTODO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/vivo/vcalendar/j;->a()V

    iget-object v0, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    invoke-direct {p0}, Lcom/vivo/vcalendar/j;->b()V

    return-void
.end method

.method private a()V
    .locals 11

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v5, 0x0

    move-object v0, v3

    move v4, v5

    move v1, v5

    move v6, v2

    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_2

    :cond_1
    const-string v0, "VCalFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSummaryAndTz end. the Events Count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vivo/vcalendar/j;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "VCalFileReader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initSummaryAndTz end. the Timezone Count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vivo/vcalendar/component/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    if-eqz v6, :cond_3

    const-string v6, "BEGIN:VCALENDAR"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iput v5, p0, Lcom/vivo/vcalendar/j;->d:I

    move v6, v5

    :cond_3
    const-string v9, "VERSION"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    sput-object v8, Lcom/vivo/vcalendar/component/c;->b:Ljava/lang/String;

    :cond_4
    iget-object v9, p0, Lcom/vivo/vcalendar/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget v9, p0, Lcom/vivo/vcalendar/j;->d:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/vivo/vcalendar/j;->d:I

    iget v9, p0, Lcom/vivo/vcalendar/j;->d:I

    if-ne v9, v2, :cond_5

    const-string v0, ":"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vcalendar/j;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v1, v2

    :cond_5
    const-string v9, "BEGIN:VTIMEZONE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v2

    :cond_6
    if-eqz v4, :cond_7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "END:VTIMEZONE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->buildTimezone(Ljava/lang/String;)Lcom/vivo/vcalendar/component/f;
    :try_end_0
    .catch Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    sget-object v4, Lcom/vivo/vcalendar/component/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v0, v3

    move v4, v5

    :cond_7
    if-eqz v1, :cond_0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\r\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/vivo/vcalendar/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/vivo/vcalendar/j;->h:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vcalendar/j;->c:Ljava/lang/String;

    move-object v0, v3

    move v1, v5

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v4, "VCalFileReader"

    const-string v9, "initSummaryAndTz: parse one timezone failed, but do not stop parse"

    invoke-static {v4, v9}, Lcom/vivo/vcalendar/component/VComponentBuilder;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;->printStackTrace()V

    move-object v0, v3

    goto :goto_1
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcalendar/j;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/vcalendar/j;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    const-string v0, "VCalFileReader"

    const-string v1, "createBufferReader succeed."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const-string v0, "VCalFileReader"

    const-string v1, "closeBufferReader succeed."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getComponentsCount()I
    .locals 1

    iget v0, p0, Lcom/vivo/vcalendar/j;->d:I

    return v0
.end method

.method public final getFirstComponentInfo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final hasNextComponent()Z
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    const/16 v1, 0x2004

    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->mark(I)V

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->reset()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/vcalendar/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->reset()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final readNextComponent()Ljava/lang/String;
    .locals 8

    const/4 v0, 0x0

    const/16 v7, 0x2800

    const/4 v2, 0x0

    const-string v1, "VCalFileReader"

    const-string v3, "readNextComponent: started."

    invoke-static {v1, v3}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    const/16 v3, 0x2004

    invoke-virtual {v1, v3}, Ljava/io/BufferedReader;->mark(I)V

    iget-object v1, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    if-nez v1, :cond_3

    const-string v1, "VCalFileReader"

    const-string v2, "readNextComponent: findNextComponent = false, has no component yet."

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/vivo/vcalendar/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/vcalendar/j;->h:Ljava/lang/String;

    iget-object v1, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->reset()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    invoke-virtual {v4, v7}, Ljava/io/BufferedReader;->mark(I)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    iget-object v3, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    new-array v4, v4, [C

    iget-object v5, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->reset()V

    iget-object v5, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v4, v2, v6}, Ljava/io/BufferedReader;->read([CII)I

    iget-object v4, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->reset()V

    iget-object v4, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/vcalendar/j;->b:Ljava/io/BufferedReader;

    invoke-virtual {v4, v7}, Ljava/io/BufferedReader;->mark(I)V

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/vcalendar/j;->g:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v0, p0, Lcom/vivo/vcalendar/j;->h:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid format: begin with VEVENT, but end with VTODO etc."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    iget-object v5, p0, Lcom/vivo/vcalendar/j;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid format: embeded VEVENTS etc."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method
