.class final Landroid/support/v4/app/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Ljava/lang/Object;

.field private synthetic c:Ljava/util/ArrayList;

.field private synthetic d:Landroid/support/v4/app/s;

.field private synthetic e:Z

.field private synthetic f:Landroid/support/v4/app/Fragment;

.field private synthetic g:Landroid/support/v4/app/Fragment;

.field private synthetic h:Landroid/support/v4/app/o;


# direct methods
.method constructor <init>(Landroid/support/v4/app/o;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/s;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/p;->h:Landroid/support/v4/app/o;

    iput-object p2, p0, Landroid/support/v4/app/p;->a:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v4/app/p;->b:Ljava/lang/Object;

    iput-object p4, p0, Landroid/support/v4/app/p;->c:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/s;

    iput-boolean p6, p0, Landroid/support/v4/app/p;->e:Z

    iput-object p7, p0, Landroid/support/v4/app/p;->f:Landroid/support/v4/app/Fragment;

    iput-object p8, p0, Landroid/support/v4/app/p;->g:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 6

    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Landroid/support/v4/app/p;->b:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/p;->b:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/p;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/support/v4/app/a;->removeTargets(Ljava/lang/Object;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/support/v4/app/p;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/support/v4/app/p;->h:Landroid/support/v4/app/o;

    iget-object v1, p0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/s;

    iget-boolean v2, p0, Landroid/support/v4/app/p;->e:Z

    iget-object v3, p0, Landroid/support/v4/app/p;->f:Landroid/support/v4/app/Fragment;

    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/o;Landroid/support/v4/app/s;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    iget-object v0, p0, Landroid/support/v4/app/p;->b:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/s;

    iget-object v1, v1, Landroid/support/v4/app/s;->d:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/app/p;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1, v5, v2}, Landroid/support/v4/app/a;->setSharedElementTargets(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V

    iget-object v0, p0, Landroid/support/v4/app/p;->h:Landroid/support/v4/app/o;

    iget-object v1, p0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/s;

    invoke-static {v0, v5, v1}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/o;Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/s;)V

    iget-object v0, p0, Landroid/support/v4/app/p;->h:Landroid/support/v4/app/o;

    iget-object v1, p0, Landroid/support/v4/app/p;->d:Landroid/support/v4/app/s;

    iget-object v2, p0, Landroid/support/v4/app/p;->f:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Landroid/support/v4/app/p;->g:Landroid/support/v4/app/Fragment;

    iget-boolean v4, p0, Landroid/support/v4/app/p;->e:Z

    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/o;->a(Landroid/support/v4/app/o;Landroid/support/v4/app/s;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
