.class final Lcom/vivo/PCTools/r/ag;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/r/s;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/r/s;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/r/ag;->a:Lcom/vivo/PCTools/r/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 5

    const/16 v1, 0x23

    const/4 v4, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    if-eq v0, v4, :cond_0

    if-ne v1, v4, :cond_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vivo/PCTools/r/ag;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v0}, Lcom/vivo/PCTools/r/s;->d(Lcom/vivo/PCTools/r/s;)Lcom/vivo/PCTools/r/ar;

    move-result-object v0

    iput-object p1, v0, Lcom/vivo/PCTools/r/ar;->g:Ljava/lang/String;

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method
