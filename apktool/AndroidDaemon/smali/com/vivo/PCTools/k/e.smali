.class final Lcom/vivo/PCTools/k/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/StartElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/k/d;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/k/d;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/k/e;->a:Lcom/vivo/PCTools/k/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final start(Lorg/xml/sax/Attributes;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/k/e;->a:Lcom/vivo/PCTools/k/d;

    iget-object v1, p0, Lcom/vivo/PCTools/k/e;->a:Lcom/vivo/PCTools/k/d;

    invoke-static {v1}, Lcom/vivo/PCTools/k/d;->a(Lcom/vivo/PCTools/k/d;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/k/d;->a(Lcom/vivo/PCTools/k/d;Ljava/lang/String;)V

    return-void
.end method
