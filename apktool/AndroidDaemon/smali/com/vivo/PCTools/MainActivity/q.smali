.class final Lcom/vivo/PCTools/MainActivity/q;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/q;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    iput p2, p0, Lcom/vivo/PCTools/MainActivity/q;->b:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/q;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->g(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Z

    new-instance v0, Lcom/vivo/PCTools/Message/c;

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/q;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Message/c;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/vivo/PCTools/MainActivity/q;->b:I

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/Message/c;->getMsg(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/q;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/Message/c;->paserJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->a(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;Ljava/util/List;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/q;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->h(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
