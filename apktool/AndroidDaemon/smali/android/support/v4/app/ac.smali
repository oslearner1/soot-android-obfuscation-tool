.class public Landroid/support/v4/app/ac;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/support/v4/app/FragmentHostCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/support/v4/app/FragmentHostCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    return-void
.end method

.method public static final createController(Landroid/support/v4/app/FragmentHostCallback;)Landroid/support/v4/app/ac;
    .locals 1

    new-instance v0, Landroid/support/v4/app/ac;

    invoke-direct {v0, p0}, Landroid/support/v4/app/ac;-><init>(Landroid/support/v4/app/FragmentHostCallback;)V

    return-object v0
.end method


# virtual methods
.method public final attachHost(Landroid/support/v4/app/Fragment;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    iget-object v1, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v2, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, v1, v2, p1}, Landroid/support/v4/app/af;->attachController(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/ab;Landroid/support/v4/app/Fragment;)V

    return-void
.end method

.method public final dispatchActivityCreated()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->dispatchActivityCreated()V

    return-void
.end method

.method public final dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/af;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/af;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final dispatchCreate()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->dispatchCreate()V

    return-void
.end method

.method public final dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/af;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v0

    return v0
.end method

.method public final dispatchDestroy()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->dispatchDestroy()V

    return-void
.end method

.method public final dispatchDestroyView()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->dispatchDestroyView()V

    return-void
.end method

.method public final dispatchLowMemory()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->dispatchLowMemory()V

    return-void
.end method

.method public final dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/af;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/af;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public final dispatchPause()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->dispatchPause()V

    return-void
.end method

.method public final dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/af;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final dispatchReallyStop()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->dispatchReallyStop()V

    return-void
.end method

.method public final dispatchResume()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->dispatchResume()V

    return-void
.end method

.method public final dispatchStart()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->dispatchStart()V

    return-void
.end method

.method public final dispatchStop()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->dispatchStop()V

    return-void
.end method

.method public final doLoaderDestroy()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->i()V

    return-void
.end method

.method public final doLoaderRetain()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->h()V

    return-void
.end method

.method public final doLoaderStart()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->g()V

    return-void
.end method

.method public final doLoaderStop(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->a(Z)V

    return-void
.end method

.method public final dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentHostCallback;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public final execPendingActions()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public final getActiveFragments(Ljava/util/List;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :goto_0
    return-object p1

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/support/v4/app/ac;->getActiveFragmentsCount()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->b:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final getActiveFragmentsCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    iget-object v0, v0, Landroid/support/v4/app/af;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getSupportFragmentManager()Landroid/support/v4/app/ad;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->d()Landroid/support/v4/app/af;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportLoaderManager()Landroid/support/v4/app/be;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->e()Landroid/support/v4/app/bf;

    move-result-object v0

    return-object v0
.end method

.method public final noteStateNotSaved()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->noteStateNotSaved()V

    return-void
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/af;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPlayingChanged(Landroid/support/v4/media/ai;)V
    .locals 0

    return-void
.end method

.method public onTransportControlsChanged(Landroid/support/v4/media/ai;)V
    .locals 0

    return-void
.end method

.method public final reportLoaderStart()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->j()V

    return-void
.end method

.method public final restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/app/af;->a(Landroid/os/Parcelable;Ljava/util/List;)V

    return-void
.end method

.method public final restoreLoaderNonConfig(Landroid/support/v4/util/j;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentHostCallback;->a(Landroid/support/v4/util/j;)V

    return-void
.end method

.method public final retainLoaderNonConfig()Landroid/support/v4/util/j;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentHostCallback;->k()Landroid/support/v4/util/j;

    move-result-object v0

    return-object v0
.end method

.method public final retainNonConfig()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public final saveAllState()Landroid/os/Parcelable;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/ac;->a:Landroid/support/v4/app/FragmentHostCallback;

    iget-object v0, v0, Landroid/support/v4/app/FragmentHostCallback;->a:Landroid/support/v4/app/af;

    invoke-virtual {v0}, Landroid/support/v4/app/af;->c()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
