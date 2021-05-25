.class public final Lcom/vivo/PCTools/MainActivity/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;


# direct methods
.method public constructor <init>(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/s;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/s;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-virtual {v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f060000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/s;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    const v2, 0x7f0b0118

    invoke-static {v1, v0, v2}, Lcom/vivo/PCTools/util/c;->showItemDialog(Lcom/vivo/PCTools/j/d;[Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/s;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/s;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->b(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/Message/MessageInstance;

    invoke-static {v1, v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->a(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;Lcom/vivo/PCTools/Message/MessageInstance;)V

    const-string v0, "MessageHelperActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onItemClick,msg="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/s;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v2}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->c(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Lcom/vivo/PCTools/Message/MessageInstance;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/PCTools/Message/MessageInstance;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
