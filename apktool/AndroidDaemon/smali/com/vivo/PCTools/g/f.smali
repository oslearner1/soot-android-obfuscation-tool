.class final Lcom/vivo/PCTools/g/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/StartElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/g/e;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/g/e;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/g/f;->a:Lcom/vivo/PCTools/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final start(Lorg/xml/sax/Attributes;)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/PCTools/g/f;->a:Lcom/vivo/PCTools/g/e;

    iget-object v1, p0, Lcom/vivo/PCTools/g/f;->a:Lcom/vivo/PCTools/g/e;

    invoke-static {v1}, Lcom/vivo/PCTools/g/e;->a(Lcom/vivo/PCTools/g/e;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/g/e;->a(Lcom/vivo/PCTools/g/e;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/g/f;->a:Lcom/vivo/PCTools/g/e;

    iget-object v1, p0, Lcom/vivo/PCTools/g/f;->a:Lcom/vivo/PCTools/g/e;

    invoke-static {v1}, Lcom/vivo/PCTools/g/e;->b(Lcom/vivo/PCTools/g/e;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/g/e;->b(Lcom/vivo/PCTools/g/e;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/g/f;->a:Lcom/vivo/PCTools/g/e;

    iget-object v1, p0, Lcom/vivo/PCTools/g/f;->a:Lcom/vivo/PCTools/g/e;

    invoke-static {v1}, Lcom/vivo/PCTools/g/e;->c(Lcom/vivo/PCTools/g/e;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/g/e;->c(Lcom/vivo/PCTools/g/e;Ljava/lang/String;)V

    const-string v0, "AppXmlParser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PackageName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/g/f;->a:Lcom/vivo/PCTools/g/e;

    invoke-static {v2}, Lcom/vivo/PCTools/g/e;->d(Lcom/vivo/PCTools/g/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "AppXmlParser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Flags ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/g/f;->a:Lcom/vivo/PCTools/g/e;

    invoke-static {v2}, Lcom/vivo/PCTools/g/e;->e(Lcom/vivo/PCTools/g/e;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
