.class final Lcom/vivo/PCTools/r/ap;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/sax/EndTextElementListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/r/s;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/r/s;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/r/ap;->a:Lcom/vivo/PCTools/r/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final end(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/r/ap;->a:Lcom/vivo/PCTools/r/s;

    invoke-static {v0}, Lcom/vivo/PCTools/r/s;->c(Lcom/vivo/PCTools/r/s;)Lcom/vivo/PCTools/r/ar;

    move-result-object v0

    iput-object p1, v0, Lcom/vivo/PCTools/r/ar;->d:Ljava/lang/String;

    return-void
.end method
