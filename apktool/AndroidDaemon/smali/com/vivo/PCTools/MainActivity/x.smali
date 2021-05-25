.class final Lcom/vivo/PCTools/MainActivity/x;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/MainActivity/x;->a:Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/x;->a:Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->a(Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;Z)V

    iget-object v0, p0, Lcom/vivo/PCTools/MainActivity/x;->a:Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;

    invoke-virtual {v0}, Lcom/vivo/PCTools/MainActivity/PasswordCheckedActivity;->finish()V

    return-void
.end method
