.class final Lcom/vivo/PCTools/i/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/StartElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/i/h;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/i/h;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/i/l;->a:Lcom/vivo/PCTools/i/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final start(Lorg/xml/sax/Attributes;)V
    .locals 6

    const-string v0, "add"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "remove"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/vivo/PCTools/i/l;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v2}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    const-string v3, ""

    sget-object v4, Lcom/vivo/PCTools/i/b;->U:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "\\*"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/PCTools/i/l;->a:Lcom/vivo/PCTools/i/h;

    iget-object v3, v3, Lcom/vivo/PCTools/i/h;->a:Lcom/vivo/PCTools/i/e;

    iget-object v4, p0, Lcom/vivo/PCTools/i/l;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v4}, Lcom/vivo/PCTools/i/h;->c(Lcom/vivo/PCTools/i/h;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/vivo/PCTools/i/l;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v5}, Lcom/vivo/PCTools/i/h;->b(Lcom/vivo/PCTools/i/h;)I

    move-result v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/vivo/PCTools/i/e;->AddIds2MuiltGroup(Landroid/content/Context;[Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/vivo/PCTools/i/l;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v2}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    const-string v3, ""

    const-string v4, "add"

    invoke-interface {v2, v3, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\\*"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/PCTools/i/l;->a:Lcom/vivo/PCTools/i/h;

    iget-object v2, v2, Lcom/vivo/PCTools/i/h;->a:Lcom/vivo/PCTools/i/e;

    iget-object v3, p0, Lcom/vivo/PCTools/i/l;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v3}, Lcom/vivo/PCTools/i/h;->c(Lcom/vivo/PCTools/i/h;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/vivo/PCTools/i/l;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v4}, Lcom/vivo/PCTools/i/h;->b(Lcom/vivo/PCTools/i/h;)I

    move-result v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/vivo/PCTools/i/e;->DeleteidInMuiltGroup(Landroid/content/Context;[Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/vivo/PCTools/i/l;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v2, ""

    const-string v3, "remove"

    invoke-interface {v0, v2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object v0, p0, Lcom/vivo/PCTools/i/l;->a:Lcom/vivo/PCTools/i/h;

    invoke-static {v0}, Lcom/vivo/PCTools/i/h;->h(Lcom/vivo/PCTools/i/h;)Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    const-string v1, ""

    sget-object v2, Lcom/vivo/PCTools/i/b;->U:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    return-void

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
