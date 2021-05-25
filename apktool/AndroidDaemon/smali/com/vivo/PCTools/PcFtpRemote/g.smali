.class final Lcom/vivo/PCTools/PcFtpRemote/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/PcFtpRemote/g;->a:Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/PcFtpRemote/g;->a:Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;

    invoke-virtual {v0}, Lcom/vivo/PCTools/PcFtpRemote/FtpControlActivity;->finish()V

    return-void
.end method
