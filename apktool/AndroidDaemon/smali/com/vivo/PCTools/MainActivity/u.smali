.class final Lcom/vivo/PCTools/MainActivity/u;
.super Landroid/os/AsyncTask;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/PCTools/MainActivity/u;-><init>(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, [Ljava/lang/Integer;

    const-string v0, "MessageHelperActivity"

    const-string v1, "=======doInBackground========"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/vivo/PCTools/Message/c;

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Message/c;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/Message/c;->getMsg(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/Message/c;->paserJson(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    check-cast p1, Ljava/util/List;

    const-string v2, "MessageHelperActivity"

    const-string v3, "=======onPostExecute========"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    const v3, 0x7f0b0119

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v2}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->e(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v2}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->d(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_1
    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v1}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->d(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->d(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    const-string v0, "MessageHelperActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPostExecute********resultsize="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v2}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->e(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v2, p1}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->a(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;Ljava/util/List;)V

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v2}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->a(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Lcom/vivo/PCTools/MainActivity/v;

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v3}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->b(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/PCTools/MainActivity/v;->setData(Ljava/util/List;)V

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v2}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->a(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Lcom/vivo/PCTools/MainActivity/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vivo/PCTools/MainActivity/v;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method protected final onPreExecute()V
    .locals 3

    const-string v0, "MessageHelperActivity"

    const-string v1, "=======onPreExecute========"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->a(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;Landroid/app/ProgressDialog;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->d(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    const v2, 0x7f0b0117

    invoke-virtual {v1, v2}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->d(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->d(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/u;->a:Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->d(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    return-void
.end method

.method protected final varargs synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 2

    check-cast p1, [Ljava/lang/Integer;

    const-string v0, "MessageHelperActivity"

    const-string v1, "=======onProgressUpdate========"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    return-void
.end method
