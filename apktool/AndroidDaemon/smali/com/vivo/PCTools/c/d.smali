.class public final Lcom/vivo/PCTools/c/d;
.super Lorg/xml/sax/helpers/DefaultHandler;


# instance fields
.field private a:Lcom/vivo/PCTools/c/b;

.field private b:Ljava/util/ArrayList;

.field private c:Landroid/support/v4/media/routing/d;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/c/d;->a:Lcom/vivo/PCTools/c/b;

    iput-object v0, p0, Lcom/vivo/PCTools/c/d;->b:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/vivo/PCTools/c/d;->c:Landroid/support/v4/media/routing/d;

    iput-object v0, p0, Lcom/vivo/PCTools/c/d;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/c/d;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final characters([CII)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/PCTools/c/d;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->d:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->a:Lcom/vivo/PCTools/c/b;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/c/b;->setId(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->d:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->d:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->a:Lcom/vivo/PCTools/c/b;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/c/b;->setName(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->d:Ljava/lang/String;

    const-string v2, "iconurl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->a:Lcom/vivo/PCTools/c/b;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/c/b;->setThumbnail(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->d:Ljava/lang/String;

    const-string v2, "model"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->a:Lcom/vivo/PCTools/c/b;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/c/b;->setModel(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->d:Ljava/lang/String;

    const-string v2, "author"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->a:Lcom/vivo/PCTools/c/b;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/c/b;->setAuthor(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->d:Ljava/lang/String;

    const-string v2, "size"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->a:Lcom/vivo/PCTools/c/b;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/c/b;->setSize(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->d:Ljava/lang/String;

    const-string v2, "previewurl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->a:Lcom/vivo/PCTools/c/b;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/c/b;->setPreviewUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->d:Ljava/lang/String;

    const-string v2, "downloadurl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->a:Lcom/vivo/PCTools/c/b;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/c/b;->setDownloadUrl(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->d:Ljava/lang/String;

    const-string v2, "desc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->a:Lcom/vivo/PCTools/c/b;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/c/b;->setDescription(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->d:Ljava/lang/String;

    const-string v2, "style"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->a:Lcom/vivo/PCTools/c/b;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/c/b;->setStyle(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->d:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->a:Lcom/vivo/PCTools/c/b;

    invoke-virtual {v1, v0}, Lcom/vivo/PCTools/c/b;->setVersion(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->d:Ljava/lang/String;

    const-string v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "end"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/c/d;->c:Landroid/support/v4/media/routing/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/c/d;->c:Landroid/support/v4/media/routing/d;

    invoke-interface {v0}, Landroid/support/v4/media/routing/d;->end()V

    goto/16 :goto_0
.end method

.method public final endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vivo/PCTools/c/d;->d:Ljava/lang/String;

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "preview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "bbktheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/vivo/PCTools/c/d;->b:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vivo/PCTools/c/d;->a:Lcom/vivo/PCTools/c/b;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public final getThemeItemList()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/c/d;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final setOnEndofXmlListener$358eb296(Landroid/support/v4/media/routing/d;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/c/d;->c:Landroid/support/v4/media/routing/d;

    return-void
.end method

.method public final startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/c/d;->d:Ljava/lang/String;

    const-string v1, "theme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "preview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "bbktheme"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    new-instance v0, Lcom/vivo/PCTools/c/b;

    invoke-direct {v0}, Lcom/vivo/PCTools/c/b;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/c/d;->a:Lcom/vivo/PCTools/c/b;

    goto :goto_0
.end method
