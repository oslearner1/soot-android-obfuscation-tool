.class final Lcom/vivo/PCTools/MainActivity/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/m;->a:Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/m;->a:Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->d(Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/m;->a:Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;

    invoke-static {v0}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->a(Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/m;->a:Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;

    invoke-virtual {v0}, Lcom/vivo/PCTools/MainActivity/IndicatorTabActivity;->finish()V

    goto :goto_0
.end method
