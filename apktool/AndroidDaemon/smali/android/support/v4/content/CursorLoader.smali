.class public Landroid/support/v4/content/CursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;


# instance fields
.field private b:Landroid/support/v4/content/h;

.field private c:Landroid/net/Uri;

.field private d:[Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/database/Cursor;

.field private i:Landroid/support/v4/os/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/support/v4/content/h;

    invoke-direct {v0, p0}, Landroid/support/v4/content/h;-><init>(Landroid/support/v4/content/g;)V

    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->b:Landroid/support/v4/content/h;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/support/v4/content/h;

    invoke-direct {v0, p0}, Landroid/support/v4/content/h;-><init>(Landroid/support/v4/content/g;)V

    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->b:Landroid/support/v4/content/h;

    iput-object p2, p0, Landroid/support/v4/content/CursorLoader;->c:Landroid/net/Uri;

    iput-object p3, p0, Landroid/support/v4/content/CursorLoader;->d:[Ljava/lang/String;

    iput-object p4, p0, Landroid/support/v4/content/CursorLoader;->e:Ljava/lang/String;

    iput-object p5, p0, Landroid/support/v4/content/CursorLoader;->f:[Ljava/lang/String;

    iput-object p6, p0, Landroid/support/v4/content/CursorLoader;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cancelLoadInBackground()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->cancelLoadInBackground()V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->i:Landroid/support/v4/os/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->i:Landroid/support/v4/os/a;

    invoke-virtual {v0}, Landroid/support/v4/os/a;->cancel()V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->h:Landroid/database/Cursor;

    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->h:Landroid/database/Cursor;

    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUri="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->c:Landroid/net/Uri;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mProjection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->d:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelection="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->e:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSelectionArgs="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->f:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSortOrder="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->g:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCursor="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->h:Landroid/database/Cursor;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mContentChanged="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/content/CursorLoader;->a:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method protected final e()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->h:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->h:Landroid/database/Cursor;

    invoke-virtual {p0, v0}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->h:Landroid/database/Cursor;

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->forceLoad()V

    :cond_2
    return-void
.end method

.method protected final f()V
    .locals 0

    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->cancelLoad()Z

    return-void
.end method

.method protected final g()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/content/AsyncTaskLoader;->g()V

    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->cancelLoad()Z

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->h:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->h:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->h:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->h:Landroid/database/Cursor;

    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->d:[Ljava/lang/String;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->f:[Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->isLoadInBackgroundCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/support/v4/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/support/v4/os/OperationCanceledException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Landroid/support/v4/os/a;

    invoke-direct {v0}, Landroid/support/v4/os/a;-><init>()V

    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->i:Landroid/support/v4/os/a;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/content/CursorLoader;->c:Landroid/net/Uri;

    iget-object v2, p0, Landroid/support/v4/content/CursorLoader;->d:[Ljava/lang/String;

    iget-object v3, p0, Landroid/support/v4/content/CursorLoader;->e:Ljava/lang/String;

    iget-object v4, p0, Landroid/support/v4/content/CursorLoader;->f:[Ljava/lang/String;

    iget-object v5, p0, Landroid/support/v4/content/CursorLoader;->g:Ljava/lang/String;

    iget-object v6, p0, Landroid/support/v4/content/CursorLoader;->i:Landroid/support/v4/os/a;

    invoke-static/range {v0 .. v6}, Landroid/support/v4/content/b;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/support/v4/os/a;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    iget-object v0, p0, Landroid/support/v4/content/CursorLoader;->b:Landroid/support/v4/content/h;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Landroid/support/v4/content/CursorLoader;->i:Landroid/support/v4/os/a;

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object v1

    :catch_0
    move-exception v0

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Landroid/support/v4/content/CursorLoader;->i:Landroid/support/v4/os/a;

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Landroid/support/v4/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->d:[Ljava/lang/String;

    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->e:Ljava/lang/String;

    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->f:[Ljava/lang/String;

    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->g:Ljava/lang/String;

    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/content/CursorLoader;->c:Landroid/net/Uri;

    return-void
.end method
