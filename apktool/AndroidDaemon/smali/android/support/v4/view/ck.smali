.class public final Landroid/support/v4/view/ck;
.super Ljava/lang/Object;


# static fields
.field private static e:Landroid/support/v4/view/ct;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;

.field private b:Ljava/lang/Runnable;

.field private c:Ljava/lang/Runnable;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/view/cs;

    invoke-direct {v0}, Landroid/support/v4/view/cs;-><init>()V

    sput-object v0, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/view/cr;

    invoke-direct {v0}, Landroid/support/v4/view/cr;-><init>()V

    sput-object v0, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    goto :goto_0

    :cond_1
    const/16 v1, 0x12

    if-lt v0, v1, :cond_2

    new-instance v0, Landroid/support/v4/view/cp;

    invoke-direct {v0}, Landroid/support/v4/view/cp;-><init>()V

    sput-object v0, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    goto :goto_0

    :cond_2
    const/16 v1, 0x10

    if-lt v0, v1, :cond_3

    new-instance v0, Landroid/support/v4/view/cq;

    invoke-direct {v0}, Landroid/support/v4/view/cq;-><init>()V

    sput-object v0, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    goto :goto_0

    :cond_3
    const/16 v1, 0xe

    if-lt v0, v1, :cond_4

    new-instance v0, Landroid/support/v4/view/cn;

    invoke-direct {v0}, Landroid/support/v4/view/cn;-><init>()V

    sput-object v0, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    goto :goto_0

    :cond_4
    new-instance v0, Landroid/support/v4/view/cl;

    invoke-direct {v0}, Landroid/support/v4/view/cl;-><init>()V

    sput-object v0, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    goto :goto_0
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ck;->b:Ljava/lang/Runnable;

    iput-object v0, p0, Landroid/support/v4/view/ck;->c:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ck;->d:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/view/ck;I)I
    .locals 0

    iput p1, p0, Landroid/support/v4/view/ck;->d:I

    return p1
.end method

.method static synthetic a(Landroid/support/v4/view/ck;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/ck;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Landroid/support/v4/view/ck;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/ck;->c:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic b(Landroid/support/v4/view/ck;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/ck;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v4/view/ck;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/ck;->b:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic c(Landroid/support/v4/view/ck;)I
    .locals 1

    iget v0, p0, Landroid/support/v4/view/ck;->d:I

    return v0
.end method


# virtual methods
.method public final alpha(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->alpha(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final alphaBy(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->alphaBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final cancel()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ct;->cancel(Landroid/support/v4/view/ck;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final getDuration()J
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ct;->getDuration(Landroid/support/v4/view/ck;Landroid/view/View;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getInterpolator()Landroid/view/animation/Interpolator;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ct;->getInterpolator(Landroid/support/v4/view/ck;Landroid/view/View;)Landroid/view/animation/Interpolator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getStartDelay()J
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ct;->getStartDelay(Landroid/support/v4/view/ck;Landroid/view/View;)J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final rotation(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->rotation(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final rotationBy(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->rotationBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final rotationX(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->rotationX(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final rotationXBy(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->rotationXBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final rotationY(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->rotationY(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final rotationYBy(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->rotationYBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final scaleX(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->scaleX(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final scaleXBy(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->scaleXBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final scaleY(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->scaleY(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final scaleYBy(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->scaleYBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final setDuration(J)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1, p2}, Landroid/support/v4/view/ct;->setDuration(Landroid/support/v4/view/ck;Landroid/view/View;J)V

    :cond_0
    return-object p0
.end method

.method public final setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->setInterpolator(Landroid/support/v4/view/ck;Landroid/view/View;Landroid/view/animation/Interpolator;)V

    :cond_0
    return-object p0
.end method

.method public final setListener(Landroid/support/v4/view/cx;)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->setListener(Landroid/support/v4/view/ck;Landroid/view/View;Landroid/support/v4/view/cx;)V

    :cond_0
    return-object p0
.end method

.method public final setStartDelay(J)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1, p2}, Landroid/support/v4/view/ct;->setStartDelay(Landroid/support/v4/view/ck;Landroid/view/View;J)V

    :cond_0
    return-object p0
.end method

.method public final setUpdateListener$37efd3c(Landroid/support/v4/media/routing/d;)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->setUpdateListener$587f161e(Landroid/support/v4/view/ck;Landroid/view/View;Landroid/support/v4/media/routing/d;)V

    :cond_0
    return-object p0
.end method

.method public final start()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ct;->start(Landroid/support/v4/view/ck;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final translationX(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->translationX(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final translationXBy(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->translationXBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final translationY(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->translationY(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final translationYBy(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->translationYBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final translationZ(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->translationZ(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final translationZBy(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->translationZBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final withEndAction(Ljava/lang/Runnable;)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->withEndAction(Landroid/support/v4/view/ck;Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-object p0
.end method

.method public final withLayer()Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0}, Landroid/support/v4/view/ct;->withLayer(Landroid/support/v4/view/ck;Landroid/view/View;)V

    :cond_0
    return-object p0
.end method

.method public final withStartAction(Ljava/lang/Runnable;)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->withStartAction(Landroid/support/v4/view/ck;Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_0
    return-object p0
.end method

.method public final x(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->x(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final xBy(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->xBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final y(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->y(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final yBy(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->yBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final z(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->z(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method

.method public final zBy(F)Landroid/support/v4/view/ck;
    .locals 2

    iget-object v0, p0, Landroid/support/v4/view/ck;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/support/v4/view/ck;->e:Landroid/support/v4/view/ct;

    invoke-interface {v1, p0, v0, p1}, Landroid/support/v4/view/ct;->zBy(Landroid/support/v4/view/ck;Landroid/view/View;F)V

    :cond_0
    return-object p0
.end method
