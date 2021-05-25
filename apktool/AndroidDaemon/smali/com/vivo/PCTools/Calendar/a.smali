.class public Lcom/vivo/PCTools/Calendar/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/ContentResolver;

.field private final d:Lcom/vivo/PCTools/Calendar/e;

.field private e:J

.field private f:Ljava/lang/Long;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:J

.field private j:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->f:Ljava/lang/Long;

    iput-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->j:Ljava/util/List;

    iput-object p1, p0, Lcom/vivo/PCTools/Calendar/a;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    new-instance v0, Lcom/vivo/PCTools/Calendar/e;

    invoke-direct {v0}, Lcom/vivo/PCTools/Calendar/e;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->d:Lcom/vivo/PCTools/Calendar/e;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->j:Ljava/util/List;

    return-void
.end method

.method private a(Landroid/content/ContentValues;Ljava/util/List;)J
    .locals 10

    const-wide/16 v8, 0x3

    const/4 v6, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x0

    const-string v0, "modify_select"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "rrule"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "dtend"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_0
    const-string v0, "eventStatus"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "eventStatus"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "originalEvent="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "originalEvent"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND originalInstanceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "originalInstanceTime"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "CalendarApi"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    move v0, v6

    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    if-nez v0, :cond_4

    const-wide/16 v0, 0x1

    :goto_1
    return-wide v0

    :cond_3
    move v0, v7

    goto :goto_0

    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "hasAlarm"

    if-lez v0, :cond_5

    move v0, v6

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sget-object v2, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v0, p2, v1}, Lcom/vivo/PCTools/Calendar/a;->a(Ljava/util/ArrayList;Ljava/util/List;I)Z

    :try_start_0
    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    sget-object v2, Lcom/vivo/vcalendar/CalendarContract;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v0

    :goto_3
    array-length v1, v0

    if-lt v7, v1, :cond_6

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_5
    move v0, v7

    goto :goto_2

    :cond_6
    aget-object v1, v0, v7

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_7

    aget-object v1, v0, v7

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "events"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    aget-object v1, v0, v7

    iget-object v1, v1, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "CalendarApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "results ============================= "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v0, v7

    iget-object v4, v4, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->j:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->f:Ljava/lang/Long;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "CalendarApi"

    const-string v2, "Ignoring unexpected remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v0, v8

    goto/16 :goto_1

    :catch_1
    move-exception v0

    const-string v1, "CalendarApi"

    const-string v2, "Ignoring unexpected exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-wide v0, v8

    goto/16 :goto_1
.end method

.method private a(Ljava/lang/Long;Landroid/content/ContentValues;Ljava/util/List;)J
    .locals 12

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v9, -0x1

    const/4 v8, 0x0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "rrule"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->h:Ljava/lang/String;

    const-string v0, "dtstart"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    const-string v0, "modify_select"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const-string v0, "modify_select"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const-string v3, "hasAlarm"

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const-wide/16 v0, 0x5

    :goto_1
    return-wide v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    const-string v2, "rrule"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->g:Ljava/lang/String;

    const-string v2, "dtstart"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/vivo/PCTools/Calendar/a;->e:J

    move-object v6, v1

    move-object v7, v0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    const-string v0, "_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "eventStatus"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "eventStatus"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/vivo/vcalendar/c;->ORIGINAL_ID:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vivo/vcalendar/c;->ORIGINAL_ID:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND originalInstanceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "originalInstanceTime"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v0, "CalendarApi"

    invoke-static {v0, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_5

    :cond_3
    const/4 v0, 0x1

    :goto_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    if-nez v0, :cond_6

    const-wide/16 v0, 0x1

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v0, "dtend"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    :goto_4
    const/4 v0, -0x1

    if-eq v1, v0, :cond_17

    const/4 v0, 0x1

    :goto_5
    if-eqz v0, :cond_18

    const-string v2, "CalendarApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "save reminders newEvent is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10, p3, v1}, Lcom/vivo/PCTools/Calendar/a;->a(Ljava/util/ArrayList;Ljava/util/List;I)Z

    :cond_8
    :goto_6
    const-string v0, "CalendarApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ops size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/vcalendar/CalendarContract;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v1

    const/4 v0, 0x0

    :goto_7
    array-length v2, v1

    if-lt v0, v2, :cond_19

    if-eqz v8, :cond_9

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    if-eqz v7, :cond_a

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_a
    const-wide/16 v0, 0x0

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->g:Ljava/lang/String;

    if-nez v0, :cond_d

    const-string v0, "EditEvent"

    const-string v1, "\u539f\u59cb\u4e8b\u4ef6\u4e3a\u975e\u91cd\u590d\u4e8b\u4ef6"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_c

    const-string v0, "dtend"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v9

    goto :goto_4

    :cond_d
    const/4 v0, 0x1

    if-ne v11, v0, :cond_10

    const-string v0, "CalendarApi"

    const-string v1, "\u4ec5\u7f16\u8f91\u6b64\u6d3b\u52a8"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    const-string v0, "originalInstanceTime"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    sget-object v0, Lcom/vivo/vcalendar/c;->ORIGINAL_ID:Ljava/lang/String;

    const-string v2, "_id"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "CalendarApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ORIGINAL_ID._ID"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "eventStatus"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "allDay"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_8
    const-string v2, "originalAllDay"

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    const-string v0, "_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "_id"

    invoke-virtual {v1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "CalendarApi"

    invoke-virtual {v1}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CalendarApi"

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto/16 :goto_4

    :cond_e
    const/4 v0, 0x0

    goto :goto_8

    :cond_f
    const/4 v0, 0x0

    goto :goto_9

    :cond_10
    const/4 v0, 0x3

    if-ne v11, v0, :cond_14

    const-string v0, "CalendarApi"

    const-string v1, "\u4ec5\u7f16\u8f91\u5c06\u6765\u6d3b\u52a8"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "originalInstanceTime"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/vivo/PCTools/Calendar/a;->i:J

    const-string v0, "originalInstanceTime"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->h:Ljava/lang/String;

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/vivo/PCTools/Calendar/a;->a()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v8

    :goto_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "_id"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v2, "CalendarApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " newValues ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v0

    goto/16 :goto_4

    :cond_11
    const/4 v8, 0x1

    iget-wide v4, p0, Lcom/vivo/PCTools/Calendar/a;->i:J

    move-object v0, p0

    move-object v1, v10

    move-object v2, v6

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/vivo/PCTools/Calendar/a;->a(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/database/Cursor;J)V

    move v0, v8

    goto :goto_a

    :cond_12
    invoke-direct {p0}, Lcom/vivo/PCTools/Calendar/a;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v9

    goto/16 :goto_4

    :cond_13
    const/4 v8, 0x1

    const-string v0, "_id"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-string v0, "CalendarApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " newValues ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v4, p0, Lcom/vivo/PCTools/Calendar/a;->i:J

    move-object v0, p0

    move-object v1, v10

    move-object v2, v6

    move-object v3, v7

    invoke-direct/range {v0 .. v5}, Lcom/vivo/PCTools/Calendar/a;->a(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/database/Cursor;J)V

    move v1, v9

    goto/16 :goto_4

    :cond_14
    const/4 v0, 0x2

    if-ne v11, v0, :cond_16

    const-string v0, "CalendarApi"

    const-string v1, "\u4ec5\u7f16\u8f91\u6240\u6709\u6d3b\u52a8"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->h:Ljava/lang/String;

    if-nez v0, :cond_15

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    sget-object v1, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    goto/16 :goto_4

    :cond_15
    const-string v0, "dtend"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_16
    move v1, v9

    goto/16 :goto_4

    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_5

    :cond_18
    if-eqz v6, :cond_8

    const-string v1, "CalendarApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save reminders newEvent is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " uri is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-static {v10, p3, v0, v1}, Lcom/vivo/PCTools/Calendar/a;->a(Ljava/util/ArrayList;Ljava/util/List;J)Z

    goto/16 :goto_6

    :cond_19
    :try_start_1
    aget-object v2, v1, v0

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v2, :cond_1a

    aget-object v2, v1, v0

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "events"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    aget-object v2, v1, v0

    iget-object v2, v2, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "CalendarApi"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "results ============================= "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v1, v0

    iget-object v5, v5, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/vivo/PCTools/Calendar/a;->j:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-nez v3, :cond_1a

    iput-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->f:Ljava/lang/Long;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "CalendarApi"

    const-string v2, "Ignoring unexpected remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_1b

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1b
    const-wide/16 v0, 0x3

    goto/16 :goto_1

    :catch_1
    move-exception v0

    :try_start_3
    const-string v1, "CalendarApi"

    const-string v2, "Ignoring unexpected exception"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_1c

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1c
    const-wide/16 v0, 0x3

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_1d

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1d
    throw v0

    :cond_1e
    move-object v6, v1

    move-object v7, v2

    goto/16 :goto_2
.end method

.method private a(ILandroid/net/Uri;JJ)Landroid/net/Uri;
    .locals 11

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    const-string v0, "dtstart"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v0, "allDay"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v3, "title"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "eventTimezone"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const-string v5, "calendar_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    const-string v7, "rrule"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    const-string v8, "_id"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v9

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move-object p2, v6

    :goto_1
    move-object v6, p2

    :goto_2
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    return-object v6

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    :try_start_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "title"

    invoke-virtual {v2, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "eventTimezone"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "allDay"

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "calendar_id"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "dtstart"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "dtend"

    invoke-static/range {p5 .. p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "CalendarApi"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "original event is = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/vivo/vcalendar/c;->ORIGINAL_ID:Ljava/lang/String;

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "originalInstanceTime"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "eventStatus"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    sget-object v3, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    goto/16 :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_4

    :pswitch_2
    cmp-long v2, v9, p3

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :goto_5
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :cond_2
    :try_start_6
    new-instance v2, Lcom/vivo/PCTools/Calendar/EventRecurrence;

    invoke-direct {v2}, Lcom/vivo/PCTools/Calendar/EventRecurrence;-><init>()V

    invoke-virtual {v2, v7}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->parse(Ljava/lang/String;)V

    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    if-eqz v0, :cond_3

    const-string v0, "UTC"

    iput-object v0, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    :cond_3
    invoke-virtual {v3, p3, p4}, Landroid/text/format/Time;->set(J)V

    iget v0, v3, Landroid/text/format/Time;->second:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v3, Landroid/text/format/Time;->second:I

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->normalize(Z)J

    const-string v0, "UTC"

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/vivo/PCTools/Calendar/EventRecurrence;->b:Ljava/lang/String;

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "dtstart"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "rrule"

    invoke-virtual {v2}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    :goto_6
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :goto_7
    throw v0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v1, v7

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lcom/vivo/PCTools/Calendar/u;Ljava/lang/String;)Lcom/vivo/PCTools/Calendar/u;
    .locals 13

    const/16 v12, 0x3b

    const/4 v4, 0x0

    new-instance v5, Lcom/vivo/PCTools/Calendar/w;

    invoke-direct {v5, v4}, Lcom/vivo/PCTools/Calendar/w;-><init>(B)V

    iput v4, v5, Lcom/vivo/PCTools/Calendar/w;->b:I

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    move v3, v4

    move-object v0, p0

    move-object v1, p0

    :goto_0
    if-lt v3, v7, :cond_0

    return-object v1

    :cond_0
    aget-object v8, v6, v3

    :try_start_0
    iput-object v8, v5, Lcom/vivo/PCTools/Calendar/w;->a:Ljava/lang/String;

    iget-object v2, v5, Lcom/vivo/PCTools/Calendar/w;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v2, 0x0

    iput v2, v5, Lcom/vivo/PCTools/Calendar/w;->b:I

    move v2, v4

    :goto_1
    iget v10, v5, Lcom/vivo/PCTools/Calendar/w;->b:I

    if-lt v10, v9, :cond_3

    :cond_1
    const/4 v9, 0x0

    iget v10, v5, Lcom/vivo/PCTools/Calendar/w;->b:I

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    if-nez v0, :cond_4

    const-string v10, "BEGIN"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    new-instance v2, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;

    const-string v9, "Expected BEGIN"

    invoke-direct {v2, v9}, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lcom/vivo/PCTools/Calendar/ICalendar$FormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    const-string v9, "Sync"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Cannot parse "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_3
    :try_start_1
    iget v2, v5, Lcom/vivo/PCTools/Calendar/w;->b:I

    invoke-virtual {v8, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v12, :cond_1

    const/16 v10, 0x3a

    if-eq v2, v10, :cond_1

    iget v10, v5, Lcom/vivo/PCTools/Calendar/w;->b:I

    add-int/lit8 v10, v10, 0x1

    iput v10, v5, Lcom/vivo/PCTools/Calendar/w;->b:I

    goto :goto_1

    :cond_4
    const-string v10, "BEGIN"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v5}, Lcom/vivo/PCTools/Calendar/a;->a(Lcom/vivo/PCTools/Calendar/w;)Ljava/lang/String;

    move-result-object v9

    new-instance v2, Lcom/vivo/PCTools/Calendar/u;

    invoke-direct {v2, v9, v0}, Lcom/vivo/PCTools/Calendar/u;-><init>(Ljava/lang/String;Lcom/vivo/PCTools/Calendar/u;)V

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Lcom/vivo/PCTools/Calendar/u;->addChild(Lcom/vivo/PCTools/Calendar/u;)V

    :cond_5
    move-object v0, v2

    :goto_3
    if-nez v1, :cond_2

    move-object v1, v0

    goto :goto_2

    :cond_6
    const-string v10, "END"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v5}, Lcom/vivo/PCTools/Calendar/a;->a(Lcom/vivo/PCTools/Calendar/w;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/vivo/PCTools/Calendar/u;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_7
    new-instance v9, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Unexpected END "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v2}, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_8
    invoke-virtual {v0}, Lcom/vivo/PCTools/Calendar/u;->getParent()Lcom/vivo/PCTools/Calendar/u;

    move-result-object v0

    goto :goto_3

    :cond_9
    new-instance v10, Lcom/vivo/PCTools/Calendar/x;

    invoke-direct {v10, v9}, Lcom/vivo/PCTools/Calendar/x;-><init>(Ljava/lang/String;)V

    if-ne v2, v12, :cond_a

    :goto_4
    invoke-static {v5}, Lcom/vivo/PCTools/Calendar/a;->b(Lcom/vivo/PCTools/Calendar/w;)Lcom/vivo/PCTools/Calendar/v;

    move-result-object v2

    if-nez v2, :cond_b

    :cond_a
    invoke-static {v5}, Lcom/vivo/PCTools/Calendar/a;->a(Lcom/vivo/PCTools/Calendar/w;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/vivo/PCTools/Calendar/x;->setValue(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lcom/vivo/PCTools/Calendar/u;->addProperty(Lcom/vivo/PCTools/Calendar/x;)V

    goto :goto_3

    :cond_b
    invoke-virtual {v10, v2}, Lcom/vivo/PCTools/Calendar/x;->addParameter(Lcom/vivo/PCTools/Calendar/v;)V
    :try_end_1
    .catch Lcom/vivo/PCTools/Calendar/ICalendar$FormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method private a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;
    .locals 8

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const-string v0, "CalendarApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "saveEventsList"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/vivo/PCTools/Calendar/a;->j:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CalendarApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "saveEventsList"

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_3

    if-nez v4, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v4, -0x1

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    const-string v0, "_id="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "event_id="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "CalendarApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "whereBuilderEvent"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CalendarApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "whereBuilderReminder"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/vcalendar/d;->a:Landroid/net/Uri;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->d:Lcom/vivo/PCTools/Calendar/e;

    invoke-virtual {v1, v7, v0, p1}, Lcom/vivo/PCTools/Calendar/e;->CreateEventsXmlFile(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :cond_3
    const-string v0, "_id="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "event_id="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->j:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v4, -0x1

    if-ge v1, v0, :cond_4

    const-string v0, " OR "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " OR "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0
.end method

.method private static a(Lcom/vivo/PCTools/Calendar/w;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/w;->a:Ljava/lang/String;

    iget v1, p0, Lcom/vivo/PCTools/Calendar/w;->b:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/vivo/PCTools/Calendar/w;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v1, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected \':\' before end of line in "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget v1, p0, Lcom/vivo/PCTools/Calendar/w;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vivo/PCTools/Calendar/w;->b:I

    return-object v1
.end method

.method private a(Ljava/util/ArrayList;Landroid/net/Uri;Landroid/database/Cursor;J)V
    .locals 10

    const v9, 0x15180

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "duration"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "allDay"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    new-instance v4, Lcom/vivo/PCTools/Calendar/EventRecurrence;

    invoke-direct {v4}, Lcom/vivo/PCTools/Calendar/EventRecurrence;-><init>()V

    iget-object v5, p0, Lcom/vivo/PCTools/Calendar/a;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->parse(Ljava/lang/String;)V

    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "UTC"

    iput-object v7, v5, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const-wide/16 v7, 0x3e8

    sub-long v7, p4, v7

    invoke-virtual {v5, v7, v8}, Landroid/text/format/Time;->set(J)V

    if-eqz v0, :cond_1

    iput v2, v5, Landroid/text/format/Time;->hour:I

    iput v2, v5, Landroid/text/format/Time;->minute:I

    iput v2, v5, Landroid/text/format/Time;->second:I

    iput-boolean v1, v5, Landroid/text/format/Time;->allDay:Z

    invoke-virtual {v5, v2}, Landroid/text/format/Time;->normalize(Z)J

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x50

    if-ne v2, v7, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v7, 0x53

    if-ne v2, v7, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v9

    add-int/lit8 v0, v0, -0x1

    div-int/2addr v0, v9

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "P"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "D"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v5}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/vivo/PCTools/Calendar/EventRecurrence;->b:Ljava/lang/String;

    const-string v1, "dtstart"

    iget-wide v2, p0, Lcom/vivo/PCTools/Calendar/a;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "duration"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rrule"

    invoke-virtual {v4}, Lcom/vivo/PCTools/Calendar/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "CalendarApi"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " oldValues ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    move v0, v2

    goto/16 :goto_0

    :cond_1
    move-object v0, v3

    goto :goto_1
.end method

.method private a()Z
    .locals 4

    iget-wide v0, p0, Lcom/vivo/PCTools/Calendar/a;->i:J

    iget-wide v2, p0, Lcom/vivo/PCTools/Calendar/a;->e:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/List;I)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/vivo/vcalendar/d;->a:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v3, "event_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentProviderOperation$Builder;->withSelectionBackReference(II)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v5, "event_id"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v5, "CalendarApi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "new Reminders ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/vivo/vcalendar/d;->a:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    const-string v5, "event_id"

    invoke-virtual {v0, v5, p2}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_1
.end method

.method private static a(Ljava/util/ArrayList;Ljava/util/List;J)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "event_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    sget-object v4, Lcom/vivo/vcalendar/d;->a:Landroid/net/Uri;

    invoke-static {v4}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    :goto_0
    if-lt v3, v4, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v5, "_id"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v5, "CalendarApi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "new Reminders ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/vivo/vcalendar/d;->a:Landroid/net/Uri;

    invoke-static {v5}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_1
.end method

.method private static b(Lcom/vivo/PCTools/Calendar/w;)Lcom/vivo/PCTools/Calendar/v;
    .locals 9

    const/16 v8, 0x22

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/vivo/PCTools/Calendar/w;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v2, 0x0

    move v0, v3

    move v1, v3

    :goto_0
    iget v6, p0, Lcom/vivo/PCTools/Calendar/w;->b:I

    if-lt v6, v5, :cond_0

    new-instance v0, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected \':\' before end of line in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v6, p0, Lcom/vivo/PCTools/Calendar/w;->b:I

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x3a

    if-ne v6, v7, :cond_3

    if-eqz v2, :cond_2

    if-ne v0, v3, :cond_1

    new-instance v0, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected \'=\' within parameter in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/vivo/PCTools/Calendar/w;->b:I

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/vivo/PCTools/Calendar/v;->b:Ljava/lang/String;

    :cond_2
    :goto_1
    return-object v2

    :cond_3
    const/16 v7, 0x3b

    if-ne v6, v7, :cond_7

    if-eqz v2, :cond_5

    if-ne v0, v3, :cond_4

    new-instance v0, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected \'=\' within parameter in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/vivo/PCTools/Calendar/w;->b:I

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/vivo/PCTools/Calendar/v;->b:Ljava/lang/String;

    goto :goto_1

    :cond_5
    new-instance v2, Lcom/vivo/PCTools/Calendar/v;

    invoke-direct {v2}, Lcom/vivo/PCTools/Calendar/v;-><init>()V

    iget v1, p0, Lcom/vivo/PCTools/Calendar/w;->b:I

    :cond_6
    :goto_2
    iget v6, p0, Lcom/vivo/PCTools/Calendar/w;->b:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/vivo/PCTools/Calendar/w;->b:I

    goto :goto_0

    :cond_7
    const/16 v7, 0x3d

    if-ne v6, v7, :cond_a

    iget v0, p0, Lcom/vivo/PCTools/Calendar/w;->b:I

    if-eqz v2, :cond_8

    if-ne v1, v3, :cond_9

    :cond_8
    new-instance v0, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected \';\' before \'=\' in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/vivo/PCTools/Calendar/v;->a:Ljava/lang/String;

    goto :goto_2

    :cond_a
    if-ne v6, v8, :cond_6

    if-nez v2, :cond_b

    new-instance v0, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected parameter before \'\"\' in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    if-ne v0, v3, :cond_c

    new-instance v0, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected \'=\' within parameter in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget v1, p0, Lcom/vivo/PCTools/Calendar/w;->b:I

    add-int/lit8 v0, v0, 0x1

    if-le v1, v0, :cond_d

    new-instance v0, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parameter value cannot contain a \'\"\' in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget v0, p0, Lcom/vivo/PCTools/Calendar/w;->b:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v4, v8, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gez v0, :cond_e

    new-instance v0, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected closing \'\"\' in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget v1, p0, Lcom/vivo/PCTools/Calendar/w;->b:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/vivo/PCTools/Calendar/v;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vivo/PCTools/Calendar/w;->b:I

    goto/16 :goto_1
.end method

.method public static getMaxConnectionsPerRoute(Lorg/apache/http/params/a;)Lorg/apache/http/conn/params/a;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMaxTotalConnections(Lorg/apache/http/params/a;)I
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTimeout(Lorg/apache/http/params/a;)J
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isBBkCalendarSurported(Landroid/content/Context;)Z
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.bbk.calendar/calendars"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_3

    move v0, v7

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "CalendarApi"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    :cond_2
    move v0, v6

    goto :goto_1

    :cond_3
    move v0, v6

    goto :goto_0
.end method

.method public static parseCalendar(Ljava/lang/String;)Lcom/vivo/PCTools/Calendar/u;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/vivo/PCTools/Calendar/a;->parseComponent(Lcom/vivo/PCTools/Calendar/u;Ljava/lang/String;)Lcom/vivo/PCTools/Calendar/u;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "VCALENDAR"

    invoke-virtual {v0}, Lcom/vivo/PCTools/Calendar/u;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;

    const-string v1, "Expected VCALENDAR"

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public static parseComponent(Lcom/vivo/PCTools/Calendar/u;Ljava/lang/String;)Lcom/vivo/PCTools/Calendar/u;
    .locals 3

    const-string v0, "\r\n"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\r"

    const-string v2, "\n"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/vivo/PCTools/Calendar/a;->a(Lcom/vivo/PCTools/Calendar/u;Ljava/lang/String;)Lcom/vivo/PCTools/Calendar/u;

    move-result-object v0

    return-object v0
.end method

.method public static parseComponent(Ljava/lang/String;)Lcom/vivo/PCTools/Calendar/u;
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/vivo/PCTools/Calendar/a;->parseComponent(Lcom/vivo/PCTools/Calendar/u;Ljava/lang/String;)Lcom/vivo/PCTools/Calendar/u;

    move-result-object v0

    return-object v0
.end method

.method public static parseEvent(Ljava/lang/String;)Lcom/vivo/PCTools/Calendar/u;
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/vivo/PCTools/Calendar/a;->parseComponent(Lcom/vivo/PCTools/Calendar/u;Ljava/lang/String;)Lcom/vivo/PCTools/Calendar/u;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "VEVENT"

    invoke-virtual {v0}, Lcom/vivo/PCTools/Calendar/u;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    new-instance v0, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;

    const-string v1, "Expected VEVENT"

    invoke-direct {v0, v1}, Lcom/vivo/PCTools/Calendar/ICalendar$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-object v0
.end method

.method public static setMaxConnectionsPerRoute(Lorg/apache/http/params/a;Lorg/apache/http/conn/params/a;)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setMaxTotalConnections(Lorg/apache/http/params/a;I)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setTimeout(Lorg/apache/http/params/a;J)V
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Stub!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final DelAllEvents(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 9

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    new-instance v6, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v6}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v7

    const-string v4, "calendar_id"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v6, v7}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {v6, v7}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    invoke-virtual {v6, v7}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    return-object v6

    :cond_1
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    invoke-virtual {v2, v1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public final DelEvents(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 19

    new-instance v14, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v14}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v2

    invoke-virtual {v14, v2}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v2

    invoke-virtual {v14, v2}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v2

    invoke-virtual {v14, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v6

    new-array v6, v6, [B

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v10

    invoke-static {v7, v8, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v9

    const-string v10, "utf-8"

    invoke-direct {v7, v6, v8, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const-string v6, "CalendarApi"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u89e3\u6790\u5f00\u59cb file="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v12, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "UTF-8"

    invoke-static {v12, v3}, Lcom/vivo/PCTools/Calendar/b;->readDelXML(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v6, "CalendarApi"

    const-string v7, "\u89e3\u6790\u5b8c\u6210"

    invoke-static {v6, v7}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "CalendarApi"

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v15

    move v9, v2

    move-object v10, v4

    move-object v13, v5

    :goto_0
    :try_start_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result v2

    if-nez v2, :cond_3

    if-eqz v10, :cond_0

    :try_start_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    :cond_0
    :goto_1
    if-eqz v13, :cond_1

    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    :cond_1
    :goto_2
    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    :cond_2
    :goto_3
    return-object v14

    :cond_3
    :try_start_6
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    const/4 v5, 0x0

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    const-string v3, "modify_select"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sget-object v4, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    if-eqz v3, :cond_4

    const/4 v6, 0x2

    if-ne v3, v6, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v3, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    move v2, v9

    move-object v3, v10

    move-object v4, v13

    :goto_4
    if-eqz v2, :cond_7

    const/4 v6, 0x0

    :try_start_7
    invoke-virtual {v14, v6}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v6, 0x4

    invoke-virtual {v14, v6}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    move-wide/from16 v0, v16

    long-to-int v6, v0

    invoke-static {v6}, Landroid/support/v4/media/session/MediaSessionCompat;->int2bytearray(I)[B

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v14, v6, v7}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    if-eqz v5, :cond_6

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int v5, v5

    const-string v6, "CalendarApi"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "_SaveEventsXml fileLength = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v14, v5}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v14, v5, v6}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move v9, v2

    move-object v10, v3

    move-object v13, v4

    goto/16 :goto_0

    :cond_5
    :try_start_8
    const-string v5, "dtstart"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v7, "dtend"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/vivo/PCTools/Calendar/a;->a(ILandroid/net/Uri;JJ)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_e

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/vivo/PCTools/BaseApplication;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".calendar_send_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "_delRet.xml"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-result-object v4

    const/4 v2, 0x3

    if-ne v3, v2, :cond_d

    :try_start_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "event_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "CalendarApi"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "whereBuilderReminder"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    sget-object v7, Lcom/vivo/vcalendar/d;->a:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_e
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-result-object v3

    :goto_5
    :try_start_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vivo/PCTools/Calendar/a;->d:Lcom/vivo/PCTools/Calendar/e;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v6}, Lcom/vivo/PCTools/Calendar/e;->CreateEventsXmlFile(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result v9

    move v2, v9

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    goto/16 :goto_4

    :cond_6
    const/4 v5, 0x0

    :try_start_b
    invoke-virtual {v14, v5}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    move v9, v2

    move-object v10, v3

    move-object v13, v4

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    const/4 v5, 0x3

    invoke-virtual {v14, v5}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move v9, v2

    move-object v10, v3

    move-object v13, v4

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :goto_6
    :try_start_c
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v2

    invoke-virtual {v14, v2}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    invoke-virtual {v14, v2}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v2

    invoke-virtual {v14, v2}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual/range {p1 .. p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v2

    invoke-virtual {v14, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v2, 0x4

    invoke-virtual {v14, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v4, :cond_8

    :try_start_d
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2

    :cond_8
    :goto_7
    if-eqz v5, :cond_9

    :try_start_e
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    :cond_9
    :goto_8
    if-eqz v3, :cond_2

    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    goto/16 :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    :catchall_0
    move-exception v2

    move-object v12, v3

    move-object v13, v5

    :goto_9
    if-eqz v4, :cond_a

    :try_start_10
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    :cond_a
    :goto_a
    if-eqz v13, :cond_b

    :try_start_11
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    :cond_b
    :goto_b
    if-eqz v12, :cond_c

    :try_start_12
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_8

    :cond_c
    :goto_c
    throw v2

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    :catch_6
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :catch_7
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_8
    move-exception v3

    goto :goto_c

    :catch_9
    move-exception v2

    goto/16 :goto_3

    :catchall_1
    move-exception v2

    move-object v13, v5

    goto :goto_9

    :catchall_2
    move-exception v2

    move-object v13, v3

    goto :goto_9

    :catchall_3
    move-exception v2

    move-object v13, v4

    move-object v4, v3

    goto :goto_9

    :catchall_4
    move-exception v2

    move-object v4, v10

    goto :goto_9

    :catchall_5
    move-exception v2

    goto :goto_9

    :catchall_6
    move-exception v2

    move-object v12, v3

    move-object v13, v5

    goto :goto_9

    :catch_a
    move-exception v2

    move-object v3, v12

    goto/16 :goto_6

    :catch_b
    move-exception v2

    move-object v5, v3

    move-object v3, v12

    goto/16 :goto_6

    :catch_c
    move-exception v2

    move-object v5, v4

    move-object v4, v3

    move-object v3, v12

    goto/16 :goto_6

    :catch_d
    move-exception v2

    move-object v3, v12

    move-object v4, v10

    move-object v5, v13

    goto/16 :goto_6

    :catch_e
    move-exception v2

    move-object v3, v12

    move-object v5, v13

    goto/16 :goto_6

    :cond_d
    move-object v3, v13

    goto/16 :goto_5

    :cond_e
    move v2, v9

    move-object v3, v10

    move-object v4, v13

    goto/16 :goto_4
.end method

.method public final GetAllCalendar()Ljava/lang/String;
    .locals 7

    const/4 v3, 0x0

    const-string v0, "CalendarApi"

    const-string v1, "CalendarApi===>GetAllCalendar"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, ""

    const/16 v0, 0x9

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "account_name"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "account_type"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "ownerAccount"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "calendar_displayName"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "sync_events"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "calendar_color"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "calendar_timezone"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "calendar_access_level"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/vivo/vcalendar/CalendarContract;->d:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v6

    goto :goto_0
.end method

.method public final GetAllEvents(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 9

    const/4 v7, 0x0

    const-string v0, "CalendarApi"

    const-string v1, "CalendarApi===>GetAllEvents"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v6}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    const/16 v0, 0xe

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_sync_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "eventStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "dtstart"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "dtend"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hasAlarm"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "rrule"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "calendar_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "modifyTime"

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/vcalendar/c;->a:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v8

    :goto_0
    if-nez v8, :cond_1

    :try_start_2
    const-string v0, "CalendarApi"

    const-string v1, "CalendarApi===>GetAllEvents==>\u67e5\u8be2\u8868Events\u51fa\u9519"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_0

    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_1
    move-object v0, v6

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v1, "CalendarApi"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_b
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v8, v7

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :try_start_5
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "event_id"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "minutes"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "method"

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->c:Landroid/content/ContentResolver;

    sget-object v1, Lcom/vivo/vcalendar/d;->a:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_c
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    if-nez v1, :cond_4

    :try_start_6
    const-string v0, "CalendarApi"

    const-string v2, "CalendarApi===>GetAllEvents==>\u67e5\u8be2\u8868Reminders\u51fa\u9519"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v8, :cond_2

    :try_start_7
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    :try_start_8
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_3
    :goto_4
    move-object v0, v6

    goto :goto_2

    :cond_4
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/vivo/PCTools/BaseApplication;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".calendar_send_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_EventsXml.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->d:Lcom/vivo/PCTools/Calendar/e;

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v8, v1, v2}, Lcom/vivo/PCTools/Calendar/e;->CreateEventsXmlFile(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v0, 0x4

    new-array v0, v0, [B

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int v2, v2

    const-string v3, "CalendarApi"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_EventsXml fileLength = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x4

    invoke-virtual {v6, v3}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByte(I[BI)V

    const/4 v2, 0x4

    invoke-virtual {v6, v0, v2}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    iget-object v0, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v6, v0, v2}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_5
    if-eqz v8, :cond_5

    :try_start_a
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    :cond_5
    :goto_6
    if-eqz v1, :cond_6

    :try_start_b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    :cond_6
    :goto_7
    move-object v0, v6

    goto/16 :goto_2

    :cond_7
    :try_start_c
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v0, 0x3

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v7, v8

    :goto_8
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    if-eqz v7, :cond_8

    :try_start_e
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    :cond_8
    :goto_9
    if-eqz v1, :cond_6

    :try_start_f
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v1, v7

    move-object v8, v7

    :goto_a
    if-eqz v8, :cond_9

    :try_start_10
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    :cond_9
    :goto_b
    if-eqz v1, :cond_a

    :try_start_11
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    :cond_a
    :goto_c
    throw v0

    :catch_3
    move-exception v0

    goto/16 :goto_1

    :catch_4
    move-exception v0

    goto/16 :goto_3

    :catch_5
    move-exception v0

    goto/16 :goto_4

    :catch_6
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v2

    goto :goto_b

    :catch_8
    move-exception v1

    goto :goto_c

    :catch_9
    move-exception v0

    goto :goto_6

    :catch_a
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v7

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v8, v7

    goto :goto_a

    :catch_b
    move-exception v0

    move-object v1, v7

    goto :goto_8

    :catch_c
    move-exception v0

    move-object v1, v7

    move-object v7, v8

    goto :goto_8
.end method

.method public final ImportEvents(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 12

    new-instance v3, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v3}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getRelyCode()B

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v6

    const-wide/16 v4, 0x0

    const-string v2, ""

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v1

    new-array v7, v1, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v10

    invoke-static {v1, v8, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v9

    const-string v10, "utf-8"

    invoke-direct {v1, v7, v8, v9, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    invoke-virtual {v6}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    new-instance v6, Lcom/vivo/PCTools/Calendar/c;

    invoke-direct {v6}, Lcom/vivo/PCTools/Calendar/c;-><init>()V

    invoke-interface {v2, v6}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const-string v7, "CalendarApi"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "file = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "CalendarApi"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "filesize = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v6}, Lcom/vivo/PCTools/Calendar/c;->getEvents()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v6}, Lcom/vivo/PCTools/Calendar/c;->getReminders()Ljava/util/List;

    move-result-object v7

    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v6, v1

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v3

    :goto_2
    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/ContentValues;

    move-object v2, v0

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v6, v6, 0x1

    :try_start_3
    const-string v9, "_id"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, p0, Lcom/vivo/PCTools/Calendar/a;->f:Ljava/lang/Long;

    const-string v9, "CalendarApi"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u5bfc\u5165\u6d3b\u52a8 ID = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/vivo/PCTools/Calendar/a;->f:Ljava/lang/Long;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v1}, Lcom/vivo/PCTools/Calendar/a;->a(Landroid/content/ContentValues;Ljava/util/List;)J

    move-result-wide v4

    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ".calendar_send_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_SaveEvents.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    const-string v1, "CalendarApi"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "saveEventsList"

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/vivo/PCTools/Calendar/a;->j:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->f:Ljava/lang/Long;

    invoke-direct {p0, v1, v2}, Lcom/vivo/PCTools/Calendar/a;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    const-wide/16 v4, 0x2

    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v1, v4, v1

    if-nez v1, :cond_4

    :try_start_4
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v1, 0x4

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    const/4 v9, 0x0

    invoke-static {v2, v1, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByte(I[BI)V

    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v2, 0x4

    invoke-virtual {v3, v1, v2}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v3, v1, v2}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    move-object v1, v3

    goto/16 :goto_2

    :catch_2
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide/16 v4, 0x3

    const-wide/16 v1, 0x3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-nez v1, :cond_2

    :try_start_6
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v1, 0x4

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    const/4 v9, 0x0

    invoke-static {v2, v1, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByte(I[BI)V

    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v2, 0x4

    invoke-virtual {v3, v1, v2}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v3, v1, v2}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v2

    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v2

    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v2

    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v2, 0x4

    new-array v2, v2, [B

    iget-object v4, p0, Lcom/vivo/PCTools/Calendar/a;->f:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByte(I[BI)V

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v4, 0x4

    invoke-virtual {v3, v2, v4}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v4, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v3, v2, v4}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_3
    throw v1

    :cond_3
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v2

    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v2

    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v2

    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    long-to-int v2, v4

    int-to-byte v2, v2

    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    long-to-int v1, v4

    int-to-byte v1, v1

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1
.end method

.method public final SaveEvents(Lcom/vivo/PCTools/q/a/a;)Lcom/vivo/PCTools/q/a/a;
    .locals 12

    new-instance v6, Lcom/vivo/PCTools/q/a/a;

    invoke-direct {v6}, Lcom/vivo/PCTools/q/a/a;-><init>()V

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v2, ""

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v1

    new-array v3, v1, [B

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBody()[B

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v7

    invoke-static {v1, v4, v3, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    new-instance v1, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getBodyLength()I

    move-result v5

    const-string v7, "utf-8"

    invoke-direct {v1, v3, v4, v5, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    const-wide/16 v3, 0x0

    :try_start_1
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    new-instance v5, Lcom/vivo/PCTools/Calendar/c;

    invoke-direct {v5}, Lcom/vivo/PCTools/Calendar/c;-><init>()V

    invoke-interface {v2, v5}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    const-string v7, "CalendarApi"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "file = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "CalendarApi"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "filesize = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v5}, Lcom/vivo/PCTools/Calendar/c;->getEvents()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5}, Lcom/vivo/PCTools/Calendar/c;->getReminders()Ljava/util/List;

    move-result-object v7

    const/4 v1, 0x0

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v5, v1

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-nez v1, :cond_0

    :goto_2
    return-object v6

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    :cond_0
    :try_start_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/content/ContentValues;

    move-object v2, v0

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v5, v5, 0x1

    :try_start_3
    const-string v9, "_id"

    invoke-virtual {v2, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    iput-object v9, p0, Lcom/vivo/PCTools/Calendar/a;->f:Ljava/lang/Long;

    const-string v9, "CalendarApi"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u4fdd\u5b58\u6d3b\u52a8 ID = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/vivo/PCTools/Calendar/a;->f:Ljava/lang/Long;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/vivo/PCTools/Calendar/a;->f:Ljava/lang/Long;

    invoke-direct {p0, v9, v2, v1}, Lcom/vivo/PCTools/Calendar/a;->a(Ljava/lang/Long;Landroid/content/ContentValues;Ljava/util/List;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v2

    const-wide/16 v9, 0x0

    cmp-long v1, v2, v9

    if-nez v1, :cond_4

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/vivo/PCTools/BaseApplication;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".calendar_send_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_SaveEvents.xml"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    const-string v1, "CalendarApi"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v9, "saveEventsList"

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/vivo/PCTools/Calendar/a;->j:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/vivo/PCTools/Calendar/a;->f:Ljava/lang/Long;

    invoke-direct {p0, v1, v4}, Lcom/vivo/PCTools/Calendar/a;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v1

    if-nez v1, :cond_4

    const-wide/16 v2, 0x2

    move-wide v3, v2

    :goto_3
    const-wide/16 v1, 0x0

    cmp-long v1, v3, v1

    if-nez v1, :cond_3

    :try_start_5
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v1, 0x4

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    const/4 v9, 0x0

    invoke-static {v2, v1, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByte(I[BI)V

    const/4 v2, 0x4

    invoke-virtual {v6, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v2, 0x4

    invoke-virtual {v6, v1, v2}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v6, v1, v2}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v1, 0x4

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    goto/16 :goto_2

    :catch_2
    move-exception v1

    move-wide v2, v3

    :goto_4
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-wide/16 v3, 0x3

    const-wide/16 v1, 0x3

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-nez v1, :cond_1

    :try_start_7
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v1, 0x4

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    const/4 v9, 0x0

    invoke-static {v2, v1, v9}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByte(I[BI)V

    const/4 v2, 0x4

    invoke-virtual {v6, v2}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v2, 0x4

    invoke-virtual {v6, v1, v2}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    iget-object v1, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v6, v1, v2}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v1, 0x3

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-wide v2, v3

    :goto_5
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v2

    invoke-virtual {v6, v2}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v2

    invoke-virtual {v6, v2}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v2

    invoke-virtual {v6, v2}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v2, 0x4

    new-array v2, v2, [B

    iget-object v3, p0, Lcom/vivo/PCTools/Calendar/a;->f:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/support/v4/media/session/MediaSessionCompat;->intToByte(I[BI)V

    const/4 v3, 0x4

    invoke-virtual {v6, v3}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    const/4 v3, 0x4

    invoke-virtual {v6, v2, v3}, Lcom/vivo/PCTools/q/a/a;->setAppend([BI)V

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v6, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    iget-object v2, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/vivo/PCTools/Calendar/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v6, v2, v3}, Lcom/vivo/PCTools/q/a/a;->setBody([BI)V

    :goto_6
    throw v1

    :cond_2
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v4

    invoke-virtual {v6, v4}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v4

    invoke-virtual {v6, v4}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v4

    invoke-virtual {v6, v4}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-virtual {v6, v2}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v2, 0x0

    invoke-virtual {v6, v2}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V

    goto :goto_6

    :cond_3
    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getVersionShort()S

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setVersion(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getMegIdInt()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setMegId(I)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setModule(S)V

    invoke-virtual {p1}, Lcom/vivo/PCTools/q/a/a;->getCmd()B

    move-result v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setCmd(B)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setHeadLength(S)V

    long-to-int v1, v3

    int-to-byte v1, v1

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setRelyCode(B)V

    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Lcom/vivo/PCTools/q/a/a;->setBodyLength(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    :catchall_1
    move-exception v1

    goto/16 :goto_5

    :catch_3
    move-exception v1

    goto/16 :goto_4

    :cond_4
    move-wide v3, v2

    goto/16 :goto_3
.end method
