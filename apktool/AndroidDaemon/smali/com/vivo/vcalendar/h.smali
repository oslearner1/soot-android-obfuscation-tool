.class public final Lcom/vivo/vcalendar/h;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Landroid/net/Uri;

.field private final c:I

.field private d:Lcom/vivo/vcalendar/j;

.field private final e:Landroid/content/Context;

.field private f:Ljava/io/PrintWriter;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/vivo/vcalendar/h;->h:Z

    iput-object p1, p0, Lcom/vivo/vcalendar/h;->b:Landroid/net/Uri;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/vcalendar/h;->a:Ljava/io/File;

    iput v1, p0, Lcom/vivo/vcalendar/h;->c:I

    iput-object p2, p0, Lcom/vivo/vcalendar/h;->e:Landroid/content/Context;

    new-instance v0, Lcom/vivo/vcalendar/j;

    iget-object v1, p0, Lcom/vivo/vcalendar/h;->b:Landroid/net/Uri;

    iget-object v2, p0, Lcom/vivo/vcalendar/h;->e:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/vivo/vcalendar/j;-><init>(Landroid/net/Uri;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vivo/vcalendar/h;->d:Lcom/vivo/vcalendar/j;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vivo/vcalendar/h;->h:Z

    iput-object p1, p0, Lcom/vivo/vcalendar/h;->a:Ljava/io/File;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/vcalendar/h;->b:Landroid/net/Uri;

    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/vcalendar/h;->c:I

    iput-object p2, p0, Lcom/vivo/vcalendar/h;->e:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/vivo/vcalendar/component/c;->getVCalendarHead()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/vivo/vcalendar/h;->f:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final addNextVEventString(Ljava/lang/String;Z)V
    .locals 2

    iget v0, p0, Lcom/vivo/vcalendar/h;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const-string v0, "FileOperationHelper"

    const-string v1, "Current File operate mode is READ_MODE, Must not call WriteMode method"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/vivo/vcalendar/h;->f:Ljava/io/PrintWriter;

    if-nez v0, :cond_2

    :try_start_0
    new-instance v0, Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/vivo/vcalendar/h;->a:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/vivo/vcalendar/h;->f:Ljava/io/PrintWriter;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    invoke-static {p1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "BEGIN:VEVENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "END:VEVENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string v0, "FileOperationHelper"

    const-string v1, "writeVEvent: the given str is not a VEvent String"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/vivo/vcalendar/h;->f:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/h;->f:Ljava/io/PrintWriter;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "FileOperationHelper"

    const-string v1, "writeVEvent: The event is not exsited in the given str."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    if-eqz p2, :cond_0

    const-string v0, "FileOperationHelper"

    const-string v1, "addNextVEventString: the flow ended!"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/h;->f:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    invoke-virtual {p0}, Lcom/vivo/vcalendar/h;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string v0, "FileOperationHelper"

    const-string v1, ": FileNotFoundException!"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final b()V
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcalendar/h;->f:Ljava/io/PrintWriter;

    invoke-static {}, Lcom/vivo/vcalendar/component/c;->getVCalendarTrail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/h;->f:Ljava/io/PrintWriter;

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final close()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/vivo/vcalendar/h;->c:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/vivo/vcalendar/h;->f:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :goto_0
    iput-boolean v2, p0, Lcom/vivo/vcalendar/h;->h:Z

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/vivo/vcalendar/h;->d:Lcom/vivo/vcalendar/j;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/j;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v0, "FileOperationHelper"

    const-string v1, "Close File failed, IOException."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final getFirstEventStr()Ljava/lang/String;
    .locals 2

    const-string v0, "FileOperationHelper"

    const-string v1, "getFirstEventStr started."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/vivo/vcalendar/h;->d:Lcom/vivo/vcalendar/j;

    invoke-virtual {v1}, Lcom/vivo/vcalendar/j;->getFirstComponentInfo()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final getNextVEventString()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lcom/vivo/vcalendar/h;->c:I

    if-eqz v1, :cond_0

    const-string v1, "FileOperationHelper"

    const-string v2, ":Current File operate mode is WRITE_MODE, Must not call ReadMode method"

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/vivo/vcalendar/h;->d:Lcom/vivo/vcalendar/j;

    invoke-virtual {v2}, Lcom/vivo/vcalendar/j;->readNextComponent()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FileOperationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ":IOException when read nextVEvent, File: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vivo/vcalendar/h;->b:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public final getVEventsCount()I
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/h;->d:Lcom/vivo/vcalendar/j;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/j;->getComponentsCount()I

    move-result v0

    iput v0, p0, Lcom/vivo/vcalendar/h;->g:I

    iget v0, p0, Lcom/vivo/vcalendar/h;->g:I

    return v0
.end method

.method public final hasNextVEvent()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/vivo/vcalendar/h;->d:Lcom/vivo/vcalendar/j;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/j;->hasNextComponent()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "FileOperationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException when judge whether has nextVEvent, File: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vivo/vcalendar/h;->b:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isClosed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/vivo/vcalendar/h;->h:Z

    return v0
.end method

.method public final setVEventsCount(I)V
    .locals 0

    iput p1, p0, Lcom/vivo/vcalendar/h;->g:I

    return-void
.end method
