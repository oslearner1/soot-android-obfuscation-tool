.class final Landroid/support/v4/widget/ac;
.super Landroid/support/v4/view/a/x;


# instance fields
.field private synthetic a:Landroid/support/v4/widget/ExploreByTouchHelper;


# direct methods
.method private constructor <init>(Landroid/support/v4/widget/ExploreByTouchHelper;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-direct {p0}, Landroid/support/v4/view/a/x;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/widget/ExploreByTouchHelper;B)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/widget/ac;-><init>(Landroid/support/v4/widget/ExploreByTouchHelper;)V

    return-void
.end method


# virtual methods
.method public final createAccessibilityNodeInfo(I)Landroid/support/v4/view/a/k;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-static {v0, p1}, Landroid/support/v4/widget/ExploreByTouchHelper;->a(Landroid/support/v4/widget/ExploreByTouchHelper;I)Landroid/support/v4/view/a/k;

    move-result-object v0

    return-object v0
.end method

.method public final performAction(IILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/ac;->a:Landroid/support/v4/widget/ExploreByTouchHelper;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/widget/ExploreByTouchHelper;->a(Landroid/support/v4/widget/ExploreByTouchHelper;IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
