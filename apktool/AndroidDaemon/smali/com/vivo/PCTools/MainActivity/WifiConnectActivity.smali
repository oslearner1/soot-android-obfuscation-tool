.class public Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/app/Activity;

.field private c:Landroid/content/IntentFilter;

.field private d:Lcom/vivo/PCTools/BaseApplication;

.field private e:Landroid/content/BroadcastReceiver;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->a:Landroid/widget/TextView;

    new-instance v0, Lcom/vivo/PCTools/MainActivity/ab;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/MainActivity/ab;-><init>(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)V

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->e:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/vivo/PCTools/MainActivity/ac;

    invoke-direct {v0, p0}, Lcom/vivo/PCTools/MainActivity/ac;-><init>(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)V

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)Lcom/vivo/PCTools/BaseApplication;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->d:Lcom/vivo/PCTools/BaseApplication;

    return-object v0
.end method

.method private static a()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_2

    instance-of v3, v0, Ljava/net/Inet4Address;

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;Lcom/vivo/PCTools/BaseApplication;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->d:Lcom/vivo/PCTools/BaseApplication;

    return-void
.end method

.method static synthetic a(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0110

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

    new-instance v3, Lcom/vivo/PCTools/MainActivity/ae;

    invoke-direct {v3, p0}, Lcom/vivo/PCTools/MainActivity/ae;-><init>(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)V

    new-instance v4, Lcom/vivo/PCTools/MainActivity/af;

    invoke-direct {v4, p0, p1}, Lcom/vivo/PCTools/MainActivity/af;-><init>(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;Z)V

    move-object v0, p0

    move-object v5, v1

    invoke-static/range {v0 .. v5}, Lcom/vivo/PCTools/util/c;->showConfirmDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public DecimalTurnHex(I)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/16 v5, 0x10

    if-ge p1, v5, :cond_1

    invoke-virtual {p0, p1}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->chang(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    move v1, p1

    move v2, v0

    :goto_0
    if-ge v1, v5, :cond_2

    new-array v3, v2, [Ljava/lang/String;

    :goto_1
    div-int/lit8 v2, p1, 0x10

    add-int/lit8 v1, v0, 0x1

    rem-int/lit8 v4, p1, 0x10

    invoke-virtual {p0, v4}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->chang(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    if-ge v2, v5, :cond_3

    invoke-virtual {p0, v2}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->chang(I)Ljava/lang/String;

    move-result-object v1

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_2
    if-ltz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v0, v3, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    move-object v0, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v1, v1, 0x10

    goto :goto_0

    :cond_3
    move v0, v1

    move p1, v2

    goto :goto_1
.end method

.method public EncryptedText()Ljava/lang/String;
    .locals 6

    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_0

    const/4 v0, 0x0

    invoke-static {}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "\\."

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v3, "WifiConnectActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IpAdress of the phone :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->DecimalTurnHex(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->stringTurnDoubleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->DecimalTurnHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->stringTurnDoubleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->DecimalTurnHex(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->stringTurnDoubleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v0, v0, v5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->DecimalTurnHex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->stringTurnDoubleStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->XOR(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0

    nop

    :array_0
    .array-data 2
        0x71s
        0x77s
        0x72s
        0x74s
    .end array-data
.end method

.method public XOR(Ljava/lang/String;[C)Ljava/lang/String;
    .locals 5

    const-string v1, ""

    array-length v2, p2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v0, v3, :cond_0

    return-object v1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    rem-int v4, v0, v2

    aget-char v4, p2, v4

    xor-int/2addr v1, v4

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public chang(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "A"

    goto :goto_0

    :pswitch_1
    const-string v0, "B"

    goto :goto_0

    :pswitch_2
    const-string v0, "C"

    goto :goto_0

    :pswitch_3
    const-string v0, "D"

    goto :goto_0

    :pswitch_4
    const-string v0, "E"

    goto :goto_0

    :pswitch_5
    const-string v0, "F"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getLocalIpAddress()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "WifiPreference IpAddress"

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getLocalMacAddress()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/vivo/PCTools/s/a;->getInstance(Landroid/content/Context;)Lcom/vivo/PCTools/s/a;

    move-result-object v0

    iget-object v0, v0, Lcom/vivo/PCTools/s/a;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initView()V
    .locals 7

    const v6, 0x7f0a002e

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v0, 0x7f0a0046

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0103

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/support/v4/view/e;->getWIFIString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v6}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/support/v4/view/e;->getWIFIString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a002d

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b010b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0}, Landroid/support/v4/view/e;->getWIFIString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0045

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/vivo/PCTools/MainActivity/ad;

    invoke-direct {v1, p0}, Lcom/vivo/PCTools/MainActivity/ad;-><init>(Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->EncryptedText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v6}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/vivo/PCTools/BaseApplication;->getInstance()Lcom/vivo/PCTools/BaseApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->d:Lcom/vivo/PCTools/BaseApplication;

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->d:Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0}, Lcom/vivo/PCTools/BaseApplication;->isPCHelperConnnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->d:Lcom/vivo/PCTools/BaseApplication;

    iget-boolean v0, v0, Lcom/vivo/PCTools/BaseApplication;->f:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->a(Z)V

    const-string v0, "WifiConnectActivity"

    const-string v1, "====disconnect wlan===="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030007

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->setContentView(I)V

    iput-object p0, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->b:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->initView()V

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->startServer()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "WifiConnectActivity"

    const-string v1, "wifi main activity is on destory"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v0}, Lcom/vivo/PCTools/BaseApplication;->setActivityInstanceNull()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "WifiConnectActivity"

    const-string v1, "OnPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->e:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "WifiConnectActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "WifiConnectActivity"

    const-string v1, "[Error] VIVO  deamon can not start because the wifi connection is not available: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0009

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b010e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->c:Landroid/content/IntentFilter;

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->c:Landroid/content/IntentFilter;

    const-string v1, "com.android.requests_wifi_connect"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->c:Landroid/content/IntentFilter;

    const-string v1, "com.vivo.PCTools.connect_state_changed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->e:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->c:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/vivo/PCTools/BaseApplication;->getInstance()Lcom/vivo/PCTools/BaseApplication;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->d:Lcom/vivo/PCTools/BaseApplication;

    const v0, 0x7f0a002e

    invoke-virtual {p0, v0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->d:Lcom/vivo/PCTools/BaseApplication;

    invoke-virtual {v1}, Lcom/vivo/PCTools/BaseApplication;->isPCHelperConnnected()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->d:Lcom/vivo/PCTools/BaseApplication;

    iget-boolean v1, v1, Lcom/vivo/PCTools/BaseApplication;->f:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public startServer()V
    .locals 2

    invoke-static {p0}, Landroid/support/v4/view/ae;->startServerService(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/MainActivity/WifiConnectActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/BaseApplication;

    sget-object v1, Lcom/vivo/PCTools/BaseApplication$AppState;->Wifi:Lcom/vivo/PCTools/BaseApplication$AppState;

    invoke-virtual {v0, v1}, Lcom/vivo/PCTools/BaseApplication;->setAppState(Lcom/vivo/PCTools/BaseApplication$AppState;)V

    return-void
.end method

.method public stringTurnDoubleStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method
