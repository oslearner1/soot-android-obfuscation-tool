.class final Lcom/vivo/PCTools/l/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/l/d;

.field private final synthetic b:Lorg/xmlpull/v1/XmlSerializer;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/l/d;Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/l/i;->a:Lcom/vivo/PCTools/l/d;

    iput-object p2, p0, Lcom/vivo/PCTools/l/i;->b:Lorg/xmlpull/v1/XmlSerializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/l/i;->b:Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    iget-object v2, p0, Lcom/vivo/PCTools/l/i;->a:Lcom/vivo/PCTools/l/d;

    invoke-static {v2}, Lcom/vivo/PCTools/l/d;->e(Lcom/vivo/PCTools/l/d;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/vivo/PCTools/l/i;->a:Lcom/vivo/PCTools/l/d;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/vivo/PCTools/l/d;->a(Lcom/vivo/PCTools/l/d;B)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
