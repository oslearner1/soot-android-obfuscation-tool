.class public final Lcom/vivo/vcalendar/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/ContentResolver;

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private final d:I

.field private e:Landroid/database/Cursor;

.field private final f:Ljava/util/ArrayList;

.field private g:I

.field private h:Ljava/lang/String;


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcalendar/e;->f:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/vcalendar/e;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/vcalendar/e;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vivo/vcalendar/e;->c:Landroid/content/Context;

    const/4 v0, 0x1

    iput v0, p0, Lcom/vivo/vcalendar/e;->d:I

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vcalendar/e;->a:Landroid/content/ContentResolver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcalendar/e;->f:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/vcalendar/e;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vivo/vcalendar/e;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vivo/vcalendar/e;->h:Ljava/lang/String;

    iput-object p1, p0, Lcom/vivo/vcalendar/e;->c:Landroid/content/Context;

    const/4 v0, 0x2

    iput v0, p0, Lcom/vivo/vcalendar/e;->d:I

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vcalendar/e;->a:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vivo/vcalendar/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "DbOperationHelper"

    const-string v1, "Constructor : the query action failed when query events wity the given seletion"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/vivo/vcalendar/e;->a()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcalendar/e;->f:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/vivo/vcalendar/e;->g:I

    iput-object p1, p0, Lcom/vivo/vcalendar/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/vivo/vcalendar/e;->c:Landroid/content/Context;

    iput p2, p0, Lcom/vivo/vcalendar/e;->d:I

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vcalendar/e;->a:Landroid/content/ContentResolver;

    const-wide/16 v6, -0x1

    const-string v0, "PC Sync"

    iget-object v1, p0, Lcom/vivo/vcalendar/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/vivo/vcalendar/e;->f:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, p0, Lcom/vivo/vcalendar/e;->d:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "calendar_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "!=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vcalendar/e;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/vivo/vcalendar/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "DbOperationHelper"

    const-string v1, "Constructor : the query action failed when query events wity the given seletion"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/vivo/vcalendar/b;->ACCOUNT_NAME:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/vcalendar/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "DbOperationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "showAccountListView() Select = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->a:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/vcalendar/b;->a:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_1
    return-void

    :cond_2
    move-wide v0, v6

    goto/16 :goto_0
.end method

.method private a()V
    .locals 7

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    iget-object v0, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    const-string v3, "calendar_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_2
    iget-object v0, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v0, v5, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->f:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private static a(Ljava/util/LinkedList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    const-string v0, "DbOperationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "initQuery: selection = \""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->a:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    const-string v5, "calendar_id"

    move-object v3, p1

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Lcom/vivo/vcalendar/e;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    iput v1, p0, Lcom/vivo/vcalendar/e;->g:I

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;
    .locals 5

    new-instance v1, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v0, -0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-lt v0, v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static matrixCursorFromCursorRow(Landroid/database/Cursor;I)Landroid/database/MatrixCursor;
    .locals 5

    new-instance v1, Landroid/database/MatrixCursor;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v0, -0x1

    if-gt v0, p1, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    invoke-virtual {v1, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v1

    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final addNextContentValue(Lcom/vivo/vcalendar/f;Z)V
    .locals 10

    iget v0, p0, Lcom/vivo/vcalendar/e;->d:I

    if-eqz v0, :cond_1

    const-string v0, "DbOperationHelper"

    const-string v1, "Write to DB method only can be called in INSERT_MODE"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    if-eqz p2, :cond_0

    :cond_2
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/vivo/vcalendar/f;->getAlarmsList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/vivo/vcalendar/f;->getAttendeesList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v4

    const-string v0, "DbOperationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addNextContentValue,isEnd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DbOperationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addNextContentValue,Alarms count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DbOperationHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "addNextContentValue,Attendees count:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/vivo/vcalendar/f;->a(Lcom/vivo/vcalendar/f;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "EXDATE"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {p1}, Lcom/vivo/vcalendar/f;->a(Lcom/vivo/vcalendar/f;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v1, "EXDATE"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getStringArrayList(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Lcom/vivo/vcalendar/f;->a(Lcom/vivo/vcalendar/f;)Landroid/content/ContentValues;

    move-result-object v1

    const-string v2, "EXDATE"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/vivo/vcalendar/e;->a:Landroid/content/ContentResolver;

    sget-object v2, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    invoke-static {p1}, Lcom/vivo/vcalendar/f;->a(Lcom/vivo/vcalendar/f;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "DbOperationHelper"

    const-string v1, "addNextContentValue: Add event failed."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    const-string v2, "DbOperationHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Event inserted:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "; eventId="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    move v2, v0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_6

    :cond_4
    if-lez v3, :cond_5

    invoke-static {p1}, Lcom/vivo/vcalendar/f;->b(Lcom/vivo/vcalendar/f;)Ljava/util/LinkedList;

    move-result-object v0

    const-string v1, "event_id"

    invoke-static {v0, v5, v1}, Lcom/vivo/vcalendar/e;->a(Ljava/util/LinkedList;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/vcalendar/e;->a:Landroid/content/ContentResolver;

    sget-object v2, Lcom/vivo/vcalendar/d;->a:Landroid/net/Uri;

    invoke-static {p1}, Lcom/vivo/vcalendar/f;->b(Lcom/vivo/vcalendar/f;)Ljava/util/LinkedList;

    move-result-object v0

    new-array v3, v3, [Landroid/content/ContentValues;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_5
    if-lez v4, :cond_0

    invoke-static {p1}, Lcom/vivo/vcalendar/f;->c(Lcom/vivo/vcalendar/f;)Ljava/util/LinkedList;

    move-result-object v0

    const-string v1, "event_id"

    invoke-static {v0, v5, v1}, Lcom/vivo/vcalendar/e;->a(Ljava/util/LinkedList;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/vcalendar/e;->a:Landroid/content/ContentResolver;

    sget-object v2, Lcom/vivo/vcalendar/a;->a:Landroid/net/Uri;

    invoke-static {p1}, Lcom/vivo/vcalendar/f;->c(Lcom/vivo/vcalendar/f;)Ljava/util/LinkedList;

    move-result-object v0

    new-array v3, v4, [Landroid/content/ContentValues;

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/ContentValues;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    goto/16 :goto_0

    :cond_6
    invoke-static {p1}, Lcom/vivo/vcalendar/f;->a(Lcom/vivo/vcalendar/f;)Landroid/content/ContentValues;

    move-result-object v0

    const-string v6, "rrule"

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    new-instance v6, Landroid/content/ContentValues;

    invoke-static {p1}, Lcom/vivo/vcalendar/f;->a(Lcom/vivo/vcalendar/f;)Landroid/content/ContentValues;

    move-result-object v0

    invoke-direct {v6, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    const-string v7, "dtstart"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v0, Lcom/vivo/vcalendar/c;->ORIGINAL_ID:Ljava/lang/String;

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "originalInstanceTime"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "eventStatus"

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->a:Landroid/content/ContentResolver;

    sget-object v7, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    invoke-virtual {v0, v7, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method

.method public final getCalendarIdList()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getNextVEventInfo()Lcom/vivo/vcalendar/g;
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v6, Lcom/vivo/vcalendar/g;

    invoke-direct {v6}, Lcom/vivo/vcalendar/g;-><init>()V

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/e;->matrixCursorFromCursorRow(Landroid/database/Cursor;I)Landroid/database/MatrixCursor;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/vivo/vcalendar/g;->a(Lcom/vivo/vcalendar/g;Landroid/database/Cursor;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    const-string v3, "calendar_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Lcom/vivo/vcalendar/g;->a(Lcom/vivo/vcalendar/g;J)V

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->b:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/vivo/vcalendar/g;->a(Lcom/vivo/vcalendar/g;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    const-string v3, "_id"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v7

    const-wide/16 v0, -0x1

    cmp-long v0, v7, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->a:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/vcalendar/d;->a:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "event_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "DbOperationHelper"

    const-string v1, "getNextVEventInfo, Get the reminder failed."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    const-string v1, "DbOperationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IllegalArgumentException:\t"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/vivo/vcalendar/e;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/vivo/vcalendar/g;->b(Lcom/vivo/vcalendar/g;Landroid/database/Cursor;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->a:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/vcalendar/a;->a:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "event_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_3

    const-string v0, "DbOperationHelper"

    const-string v1, "getNextVEventInfo, Get the reminder failed."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {v0}, Lcom/vivo/vcalendar/e;->matrixCursorFromCursor(Landroid/database/Cursor;)Landroid/database/MatrixCursor;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/vivo/vcalendar/g;->c(Lcom/vivo/vcalendar/g;Landroid/database/Cursor;)V

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vivo/vcalendar/e;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_4
    move-object v2, v6

    goto/16 :goto_0
.end method

.method public final getVEventCount()I
    .locals 1

    iget v0, p0, Lcom/vivo/vcalendar/e;->g:I

    return v0
.end method

.method public final hasNextVEvent()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final isGivenIdEventExisted(J)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "_id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " AND deleted"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/vivo/vcalendar/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "DbOperationHelper"

    const-string v2, "isGivenIdEventExist(), query event cursor result is null"

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    iput v1, p0, Lcom/vivo/vcalendar/e;->g:I

    iget-object v2, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    iget-object v2, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/vivo/vcalendar/e;->e:Landroid/database/Cursor;

    const-string v4, "calendar_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/vivo/vcalendar/e;->f:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    const-string v1, "DbOperationHelper"

    const-string v2, "the Given Id Event must has the calendarId column"

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method
