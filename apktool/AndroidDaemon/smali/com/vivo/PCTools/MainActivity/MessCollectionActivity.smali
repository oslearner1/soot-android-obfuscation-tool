.class public Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/vivo/PCTools/j/d;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/ImageView;

.field private d:Ljava/util/List;

.field private e:Lcom/vivo/PCTools/MainActivity/v;

.field private f:Lcom/vivo/PCTools/Message/MessageInstance;

.field private g:Landroid/app/ProgressDialog;

.field private h:I

.field private i:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->d:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->h:I

    new-instance v0, Lcom/vivo/PCTools/MainActivity/p;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/MainActivity/p;-><init>(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)V

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Lcom/vivo/PCTools/MainActivity/v;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->e:Lcom/vivo/PCTools/MainActivity/v;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->a()Z

    new-instance v0, Lcom/vivo/PCTools/MainActivity/u;

    invoke-direct {v0, p0, v3}, Lcom/vivo/PCTools/MainActivity/u;-><init>(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;B)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Integer;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/MainActivity/u;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string v0, "MessageHelperActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "======last_msgList_size="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->g:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;Lcom/vivo/PCTools/Message/MessageInstance;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->f:Lcom/vivo/PCTools/Message/MessageInstance;

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->d:Ljava/util/List;

    return-void
.end method

.method private a()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f0b011d

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Lcom/vivo/PCTools/Message/MessageInstance;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->f:Lcom/vivo/PCTools/Message/MessageInstance;

    return-object v0
.end method

.method static synthetic d(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->g:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic e(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic f(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)I
    .locals 1

    iget v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->h:I

    return v0
.end method

.method static synthetic g(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Z
    .locals 1

    invoke-direct {p0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->i:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v3}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->setContentView(I)V

    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b0105

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a0027

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->a:Landroid/widget/ListView;

    const v0, 0x7f0a0026

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->b:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->c:Landroid/widget/ImageView;

    new-instance v0, Lcom/vivo/PCTools/Message/a;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/Message/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/vivo/PCTools/Message/a;->getAllMsg(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->d:Ljava/util/List;

    const-string v0, "updateMsg"

    invoke-virtual {p0, v0, v2}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "version"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->h:I

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->h:I

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->a(I)V

    :goto_0
    new-instance v0, Lcom/vivo/PCTools/MainActivity/v;

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->d:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/vivo/PCTools/MainActivity/v;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->e:Lcom/vivo/PCTools/MainActivity/v;

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->e:Lcom/vivo/PCTools/MainActivity/v;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/vivo/PCTools/MainActivity/s;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/MainActivity/s;-><init>(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->b:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/vivo/PCTools/MainActivity/t;

    invoke-direct {v1, p0, v2}, Lcom/vivo/PCTools/MainActivity/t;-><init>(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;B)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/vivo/PCTools/MainActivity/r;

    invoke-direct {v1, p0, v2}, Lcom/vivo/PCTools/MainActivity/r;-><init>(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;B)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    iget v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->h:I

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->updateMessage(I)V

    goto :goto_0
.end method

.method public onItemClick(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "smsto:"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->f:Lcom/vivo/PCTools/Message/MessageInstance;

    iget-object v0, v0, Lcom/vivo/PCTools/Message/MessageInstance;->content:Ljava/lang/String;

    const-string v2, "sms_body"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;->f:Lcom/vivo/PCTools/Message/MessageInstance;

    iget-object v2, v2, Lcom/vivo/PCTools/Message/MessageInstance;->content:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const v0, 0x7f0b011e

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateMessage(I)V
    .locals 1

    new-instance v0, Lcom/vivo/PCTools/MainActivity/q;

    invoke-direct {v0, p0, p1}, Lcom/vivo/PCTools/MainActivity/q;-><init>(Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;I)V

    invoke-virtual {v0}, Lcom/vivo/PCTools/MainActivity/q;->start()V

    return-void
.end method
