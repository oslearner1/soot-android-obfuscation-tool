.class final Lcom/vivo/PCTools/MainActivity/p;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/p;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/p;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->a(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Lcom/vivo/PCTools/MainActivity/v;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/p;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v1}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->b(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/MainActivity/v;->setData(Ljava/util/List;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/p;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->a(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Lcom/vivo/PCTools/MainActivity/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vivo/PCTools/MainActivity/v;->notifyDataSetChanged()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
