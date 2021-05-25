.class public final Lcom/vivo/PCTools/mms/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://mms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://mms/outbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://mms/inbox"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://mms/draft"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://mms/temp"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://mms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/PCTools/mms/a;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createSingleMMSPduFile(Landroid/content/Context;Landroid/net/Uri;)[B
    .locals 2

    invoke-static {}, Lcom/google_mms/android/mms/util/PduCache;->getInstance()Lcom/google_mms/android/mms/util/PduCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google_mms/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google_mms/android/mms/util/PduCacheEntry;

    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google_mms/android/mms/pdu/PduPersister;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google_mms/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google_mms/android/mms/pdu/GenericPdu;
    :try_end_0
    .catch Lcom/google_mms/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    new-instance v1, Lcom/google_mms/android/mms/pdu/PduComposer;

    invoke-direct {v1, p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google_mms/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/google_mms/android/mms/pdu/PduComposer;->make()[B

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google_mms/android/mms/MmsException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static insertMMStoDB(Landroid/content/Context;[B)I
    .locals 5

    const/4 v0, -0x1

    const-string v1, "mmsWorker"

    const-string v2, "insertMMStoDB"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/google_mms/android/mms/pdu/PduParser;

    invoke-direct {v1, p1}, Lcom/google_mms/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v1}, Lcom/google_mms/android/mms/pdu/PduParser;->parse()Lcom/google_mms/android/mms/pdu/GenericPdu;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "mmsWorker"

    const-string v2, "Invalid PUSH data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google_mms/android/mms/pdu/PduPersister;

    move-result-object v2

    sget-object v3, Lcom/vivo/PCTools/mms/a;->a:Landroid/net/Uri;

    :try_start_0
    invoke-virtual {v2, v1, v3}, Lcom/google_mms/android/mms/pdu/PduPersister;->persist(Lcom/google_mms/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google_mms/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v1

    const/16 v4, 0x84

    if-ne v1, v4, :cond_1

    sget-object v1, Lcom/vivo/PCTools/r/a;->d:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Lcom/google_mms/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/vivo/PCTools/r/a;->e:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Lcom/google_mms/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google_mms/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v1, "mmsWorker"

    const-string v2, "Failed to insert MMS to DB"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
