.class public Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static a:Landroid/content/Context;


# instance fields
.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v3

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0, v3}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v1, v2

    :cond_4
    invoke-static {p0, v0}, Landroid/support/v4/content/e;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2

    new-array v5, v2, [Ljava/lang/String;

    aput-object v0, v5, v3

    invoke-static {p0, v5, v3}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1
.end method

.method public static getUnAllowedPermissions(Landroid/content/Context;)Ljava/util/List;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "android.permission.READ_CALENDAR"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, v1

    :goto_0
    if-lt v0, v3, :cond_0

    return-object v2

    :cond_0
    aget-object v4, v1, v0

    invoke-static {p0, v4}, Landroid/support/v4/content/e;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkWlanAndCon(Ljava/lang/Class;)V
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/vivo/PCTools/PcFtpRemote/FTPServerService;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b010f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Landroid/support/v4/view/e;->getWIFIString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vivo/PCTools/MainActivity/b;

    invoke-direct {v3, p0}, Lcom/vivo/PCTools/MainActivity/b;-><init>(Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;)V

    new-instance v4, Lcom/vivo/PCTools/MainActivity/c;

    invoke-direct {v4, p0}, Lcom/vivo/PCTools/MainActivity/c;-><init>(Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;)V

    move-object v0, p0

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/vivo/PCTools/util/c;->showConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-class v0, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->checkWlanAndCon(Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_1
    const-class v0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->checkWlanAndCon(Ljava/lang/Class;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vivo/PCTools/MainActivity/MessCollectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7f0a000f -> :sswitch_2
        0x7f0a0013 -> :sswitch_1
        0x7f0a0018 -> :sswitch_0
        0x7f0a001c -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v2, 0x1

    const/16 v4, 0x8

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->setContentView(I)V

    sput-object p0, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->a:Landroid/content/Context;

    invoke-static {p0}, Lorg/swiftp/ae;->setContext(Landroid/content/Context;)V

    const v0, 0x7f0a0018

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a000f

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->d:Landroid/widget/ImageView;

    const v0, 0x7f0a001c

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/support/v4/view/e;->getWIFIString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0a0015

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/vivo/PCTools/MainActivity/a;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/MainActivity/a;-><init>(Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v0, Lcom/vivo/PCTools/util/a;->i:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/vivo/PCTools/util/a;->j:Ljava/lang/String;

    const-string v1, "EX"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    :goto_0
    const v0, 0x7f0a001f

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "v"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {p0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->getUnAllowedPermissions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->a(Ljava/util/List;)V

    return-void

    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->f:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    const-string v0, "denied"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "denied"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/MainActivity/AssistantMainActivity;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method
