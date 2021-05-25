.class final Landroid/support/v4/media/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/ServiceConnection;

.field private synthetic b:Landroid/support/v4/media/d;


# direct methods
.method constructor <init>(Landroid/support/v4/media/d;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/e;->b:Landroid/support/v4/media/d;

    iput-object p2, p0, Landroid/support/v4/media/e;->a:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/e;->a:Landroid/content/ServiceConnection;

    iget-object v1, p0, Landroid/support/v4/media/e;->b:Landroid/support/v4/media/d;

    invoke-static {v1}, Landroid/support/v4/media/d;->a(Landroid/support/v4/media/d;)Landroid/support/v4/media/k;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v4/media/e;->b:Landroid/support/v4/media/d;

    invoke-static {v0}, Landroid/support/v4/media/d;->b(Landroid/support/v4/media/d;)V

    iget-object v0, p0, Landroid/support/v4/media/e;->b:Landroid/support/v4/media/d;

    invoke-static {v0}, Landroid/support/v4/media/d;->c(Landroid/support/v4/media/d;)Landroid/support/v4/app/s;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/s;->onConnectionFailed()V

    :cond_0
    return-void
.end method
