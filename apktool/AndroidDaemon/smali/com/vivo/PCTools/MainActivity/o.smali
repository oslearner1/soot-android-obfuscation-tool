.class final Lcom/vivo/PCTools/MainActivity/o;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;


# direct methods
.method private constructor <init>(Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/o;->a:Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/vivo/PCTools/MainActivity/o;-><init>(Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/o;->a:Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->a(Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/o;->a:Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;->b(Lcom/vivo/PCTools/MainActivity/InstallThemeActivity;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
