.class public Lcom/google_mms/android/mms/pdu/PduPersister;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ADDRESS_FIELDS:[I

.field private static final CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

.field private static final CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

.field private static final DEBUG:Z = true

.field private static final DUMMY_THREAD_ID:J = 0x7fffffffffffffffL

.field private static final ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

.field private static final ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

.field private static final LOCAL_LOGV:Z = true

.field private static final LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

.field private static final LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

.field private static final MESSAGE_BOX_MAP:Ljava/util/HashMap;

.field private static final OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

.field private static final OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

.field private static final PART_COLUMN_CHARSET:I = 0x1

.field private static final PART_COLUMN_CONTENT_DISPOSITION:I = 0x2

.field private static final PART_COLUMN_CONTENT_ID:I = 0x3

.field private static final PART_COLUMN_CONTENT_LOCATION:I = 0x4

.field private static final PART_COLUMN_CONTENT_TYPE:I = 0x5

.field private static final PART_COLUMN_DATA:I = 0x9

.field private static final PART_COLUMN_FILENAME:I = 0x6

.field private static final PART_COLUMN_ID:I = 0x0

.field private static final PART_COLUMN_NAME:I = 0x7

.field private static final PART_COLUMN_TEXT:I = 0x8

.field private static final PART_PROJECTION:[Ljava/lang/String;

.field private static final PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

.field private static final PDU_COLUMN_CONTENT_CLASS:I = 0xb

.field private static final PDU_COLUMN_CONTENT_LOCATION:I = 0x5

.field private static final PDU_COLUMN_CONTENT_TYPE:I = 0x6

.field private static final PDU_COLUMN_DATE:I = 0x15

.field private static final PDU_COLUMN_DELIVERY_REPORT:I = 0xc

.field private static final PDU_COLUMN_DELIVERY_TIME:I = 0x16

.field private static final PDU_COLUMN_EXPIRY:I = 0x17

.field private static final PDU_COLUMN_ID:I = 0x0

.field private static final PDU_COLUMN_MESSAGE_BOX:I = 0x1

.field private static final PDU_COLUMN_MESSAGE_CLASS:I = 0x7

.field private static final PDU_COLUMN_MESSAGE_ID:I = 0x8

.field private static final PDU_COLUMN_MESSAGE_SIZE:I = 0x18

.field private static final PDU_COLUMN_MESSAGE_TYPE:I = 0xd

.field private static final PDU_COLUMN_MMS_VERSION:I = 0xe

.field private static final PDU_COLUMN_PRIORITY:I = 0xf

.field private static final PDU_COLUMN_READ:I = 0x1b

.field private static final PDU_COLUMN_READ_REPORT:I = 0x10

.field private static final PDU_COLUMN_READ_STATUS:I = 0x11

.field private static final PDU_COLUMN_REPORT_ALLOWED:I = 0x12

.field private static final PDU_COLUMN_RESPONSE_TEXT:I = 0x9

.field private static final PDU_COLUMN_RETRIEVE_STATUS:I = 0x13

.field private static final PDU_COLUMN_RETRIEVE_TEXT:I = 0x3

.field private static final PDU_COLUMN_RETRIEVE_TEXT_CHARSET:I = 0x1a

.field private static final PDU_COLUMN_STATUS:I = 0x14

.field private static final PDU_COLUMN_SUBJECT:I = 0x4

.field private static final PDU_COLUMN_SUBJECT_CHARSET:I = 0x19

.field private static final PDU_COLUMN_THREAD_ID:I = 0x2

.field private static final PDU_COLUMN_TIME:I = 0x1c

.field private static final PDU_COLUMN_TRANSACTION_ID:I = 0xa

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field public static final PROC_STATUS_COMPLETED:I = 0x3

.field public static final PROC_STATUS_PERMANENTLY_FAILURE:I = 0x2

.field public static final PROC_STATUS_TRANSIENT_FAILURE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PduPersister"

.field public static final TEMPORARY_DRM_OBJECT_URI:Ljava/lang/String; = "content://mms/9223372036854775807/part"

.field private static final TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

.field private static final TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

.field private static sPersister:Lcom/google_mms/android/mms/pdu/PduPersister;


# instance fields
.field private mBackupRestore:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x9a

    const/16 v6, 0x96

    const/4 v5, 0x3

    const/4 v1, 0x1

    const/4 v4, 0x4

    const-class v0, Lcom/google_mms/android/mms/pdu/PduPersister;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google_mms/android/mms/pdu/PduPersister;->$assertionsDisabled:Z

    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    const/16 v0, 0x1d

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/4 v2, 0x2

    const-string v3, "thread_id"

    aput-object v3, v0, v2

    const-string v2, "retr_txt"

    aput-object v2, v0, v5

    const-string v2, "sub"

    aput-object v2, v0, v4

    const/4 v2, 0x5

    const-string v3, "ct_l"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "ct_t"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "m_cls"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "m_id"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "resp_txt"

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const-string v3, "tr_id"

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const-string v3, "ct_cls"

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const-string v3, "d_rpt"

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const-string v3, "m_type"

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const-string v3, "v"

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const-string v3, "pri"

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const-string v3, "rr"

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const-string v3, "read_status"

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const-string v3, "rpt_a"

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const-string v3, "retr_st"

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const-string v3, "st"

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const-string v3, "date"

    aput-object v3, v0, v2

    const/16 v2, 0x16

    const-string v3, "d_tm"

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const-string v3, "exp"

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const-string v3, "m_size"

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const-string v3, "sub_cs"

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const-string v3, "retr_txt_cs"

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const-string v3, "read"

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const-string v3, "time"

    aput-object v3, v0, v2

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v0, v2

    const-string v2, "chset"

    aput-object v2, v0, v1

    const/4 v2, 0x2

    const-string v3, "cd"

    aput-object v3, v0, v2

    const-string v2, "cid"

    aput-object v2, v0, v5

    const-string v2, "cl"

    aput-object v2, v0, v4

    const/4 v2, 0x5

    const-string v3, "ct"

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const-string v3, "fn"

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const-string v3, "name"

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const-string v3, "text"

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const-string v3, "data"

    aput-object v3, v0, v2

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v2, Lcom/google_mms/android/mms/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/google_mms/android/mms/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/google_mms/android/mms/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    sget-object v1, Lcom/google_mms/android/mms/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt_cs"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "sub"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_l"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_t"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "resp_txt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tr_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0xba

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ct_cls"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_rpt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "v"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "pri"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x9b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "read_status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "rpt_a"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "retr_st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "st"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    const v1, 0xff00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "date"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "d_tm"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "exp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "m_size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    const v1, 0xff00

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google_mms/android/mms/util/PduCache;->getInstance()Lcom/google_mms/android/mms/util/PduCache;

    move-result-object v0

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x81
        0x82
        0x89
        0x97
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mBackupRestore:Z

    iput-object p1, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private checkAndUpdatePendingMsg(Lcom/google_mms/android/mms/pdu/GenericPdu;JLjava/lang/Integer;)Landroid/net/Uri;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    const-string v1, "PduPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "checkAndUpdatePendingMsg"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v1, p1, Lcom/google_mms/android/mms/pdu/SendReq;

    if-nez v1, :cond_0

    const-string v1, "PduPersister"

    const-string v2, "not SendReq"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const-string v1, "PduPersister"

    const-string v2, "not in outbox"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "proto_type"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "msg_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "msg_type"

    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "err_type"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "err_code"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "retry_index"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "due_time"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/google_mms/android/mms/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2, v3, v0}, Lcom/google_mms/android/mms/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "PduPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "res="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B
    .locals 1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 3

    :try_start_0
    const-string v0, "iso-8859-1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    new-array v0, v0, [B

    goto :goto_0
.end method

.method private getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;
    .locals 1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPduPersister(Landroid/content/Context;)Lcom/google_mms/android/mms/pdu/PduPersister;
    .locals 1

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->sPersister:Lcom/google_mms/android/mms/pdu/PduPersister;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->sPersister:Lcom/google_mms/android/mms/pdu/PduPersister;

    iget-object v0, v0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/google_mms/android/mms/pdu/PduPersister;

    invoke-direct {v0, p0}, Lcom/google_mms/android/mms/pdu/PduPersister;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->sPersister:Lcom/google_mms/android/mms/pdu/PduPersister;

    :cond_1
    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->sPersister:Lcom/google_mms/android/mms/pdu/PduPersister;

    return-object v0
.end method

.method private loadAddress(JLcom/google_mms/android/mms/pdu/PduHeaders;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://mms/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string v5, "address"

    aput-object v5, v3, v7

    const-string v5, "charset"

    aput-object v5, v3, v6

    const-string v5, "type"

    aput-object v5, v3, v8

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google_mms/android/mms/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const-string v0, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unknown address type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v0

    :sswitch_0
    :try_start_2
    new-instance v3, Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v3, v2}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google_mms/android/mms/pdu/EncodedStringValue;I)V

    goto :goto_0

    :sswitch_1
    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "token"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v3, Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v3, v2}, Lcom/google_mms/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google_mms/android/mms/pdu/EncodedStringValue;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x81 -> :sswitch_1
        0x82 -> :sswitch_1
        0x89 -> :sswitch_0
        0x97 -> :sswitch_1
    .end sparse-switch
.end method

.method private loadParts(J)[Lcom/google_mms/android/mms/pdu/PduPart;
    .locals 12

    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://mms/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/part"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/google_mms/android/mms/pdu/PduPersister;->PART_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Lcom/google_mms/android/mms/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    const-string v0, "PduPersister"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loadParts("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): no part to load."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_1

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-object v4

    :cond_2
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v0, v0, [Lcom/google_mms/android/mms/pdu/PduPart;

    move v2, v7

    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_4

    if-eqz v5, :cond_3

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v4, v0

    goto :goto_0

    :cond_4
    :try_start_2
    new-instance v6, Lcom/google_mms/android/mms/pdu/PduPart;

    invoke-direct {v6}, Lcom/google_mms/android/mms/pdu/PduPart;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, v5, v1}, Lcom/google_mms/android/mms/pdu/PduPersister;->getIntegerFromPartColumn(Landroid/database/Cursor;I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v6, v1}, Lcom/google_mms/android/mms/pdu/PduPart;->setCharset(I)V

    :cond_5
    const/4 v1, 0x2

    invoke-direct {p0, v5, v1}, Lcom/google_mms/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v6, v1}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentDisposition([B)V

    :cond_6
    const/4 v1, 0x3

    invoke-direct {p0, v5, v1}, Lcom/google_mms/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v6, v1}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentId([B)V

    :cond_7
    const/4 v1, 0x4

    invoke-direct {p0, v5, v1}, Lcom/google_mms/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v6, v1}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentLocation([B)V

    :cond_8
    const/4 v1, 0x5

    invoke-direct {p0, v5, v1}, Lcom/google_mms/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-virtual {v6, v7}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentType([B)V

    const/4 v1, 0x6

    invoke-direct {p0, v5, v1}, Lcom/google_mms/android/mms/pdu/PduPersister;->getByteArrayFromPartColumn(Landroid/database/Cursor;I)[B

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v6, v1}, Lcom/google_mms/android/mms/pdu/PduPart;->setFilename([B)V

    :cond_9
    const/4 v1, 0x7

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1a

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_a

    const-string v9, "PduPersister"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "loadParts name="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6, v1}, Lcom/google_mms/android/mms/pdu/PduPart;->setName([B)V

    :cond_a
    const/4 v1, 0x0

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v10, "content://mms/part/"

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google_mms/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    invoke-static {v7}, Lcom/google_mms/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google_mms/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-static {v7}, Lcom/google_mms/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-static {v7}, Lcom/google_mms/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_d

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string v9, "application/smil"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "text/html"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_13

    :cond_b
    const/16 v1, 0x8

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_11

    new-instance v7, Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v1, :cond_10

    :goto_3
    invoke-direct {v7, v3, v1}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;-><init>(ILjava/lang/String;)V

    invoke-virtual {v7}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v1

    :goto_4
    const/4 v3, 0x0

    array-length v7, v1

    invoke-virtual {v8, v1, v3, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_c
    :goto_5
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/google_mms/android/mms/pdu/PduPart;->setData([B)V

    :cond_d
    add-int/lit8 v1, v2, 0x1

    aput-object v6, v0, v2

    move v2, v1

    goto/16 :goto_1

    :cond_e
    new-instance v0, Lcom/google_mms/android/mms/MmsException;

    const-string v1, "Content-Type must be set."

    invoke-direct {v0, v1}, Lcom/google_mms/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    if-eqz v5, :cond_f

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v0

    :cond_10
    :try_start_3
    const-string v1, ""

    goto :goto_3

    :cond_11
    new-instance v3, Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    if-eqz v1, :cond_12

    :goto_6
    invoke-direct {v3, v1}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v1

    goto :goto_4

    :cond_12
    const-string v1, ""

    goto :goto_6

    :cond_13
    const-string v3, "text/plain"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    const/16 v1, 0x9

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-eqz v1, :cond_14

    array-length v3, v1

    if-nez v3, :cond_16

    :cond_14
    const/16 v1, 0x8

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    if-eqz v1, :cond_15

    :goto_7
    invoke-direct {v3, v1}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v1

    :goto_8
    const/4 v3, 0x0

    array-length v7, v1

    invoke-virtual {v8, v1, v3, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    :cond_15
    const-string v1, ""

    goto :goto_7

    :cond_16
    new-instance v3, Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    invoke-direct {v3, v1}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v3}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getTextString()[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto :goto_8

    :cond_17
    :try_start_4
    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    const/16 v3, 0x100

    :try_start_5
    new-array v7, v3, [B

    invoke-virtual {v1, v7}, Ljava/io/InputStream;->read([B)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v3

    :goto_9
    if-gez v3, :cond_18

    if-eqz v1, :cond_c

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_7
    const-string v3, "PduPersister"

    const-string v7, "Failed to close stream"

    invoke-static {v3, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    :cond_18
    const/4 v9, 0x0

    :try_start_8
    invoke-virtual {v8, v7, v9, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1, v7}, Ljava/io/InputStream;->read([B)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v3

    goto :goto_9

    :catch_1
    move-exception v0

    :goto_a
    :try_start_9
    const-string v1, "PduPersister"

    const-string v2, "Failed to load part data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    new-instance v1, Lcom/google_mms/android/mms/MmsException;

    invoke-direct {v1, v0}, Lcom/google_mms/android/mms/MmsException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    :goto_b
    if-eqz v4, :cond_19

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_19
    :goto_c
    :try_start_b
    throw v0

    :catch_2
    move-exception v1

    const-string v2, "PduPersister"

    const-string v3, "Failed to close stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v4, v1

    goto :goto_b

    :catch_3
    move-exception v0

    move-object v4, v1

    goto :goto_a

    :cond_1a
    move-object v1, v4

    goto/16 :goto_2
.end method

.method private persistAddress(JI[Lcom/google_mms/android/mms/pdu/EncodedStringValue;)V
    .locals 6

    new-instance v1, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v1, v0}, Landroid/content/ContentValues;-><init>(I)V

    array-length v2, p4

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v3, p4, v0

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    const-string v4, "address"

    invoke-virtual {v3}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google_mms/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "charset"

    invoke-virtual {v3}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "type"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "content://mms/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/addr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v5, v3, v1}, Lcom/google_mms/android/mms/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private persistData(Lcom/google_mms/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getData()[B

    move-result-object v0

    const-string v2, "text/plain"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "application/smil"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "text/html"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    if-nez v0, :cond_1

    const-string v0, "MMSLog"

    const-string v3, "convert data from null to empty."

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getCharset()I

    move-result v3

    if-eqz v3, :cond_4

    const-string v4, "application/smil"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "text"

    new-instance v5, Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    invoke-direct {v5, v3, v0}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v5}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v3, "data"

    new-instance v4, Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v4}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, p2, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_e

    new-instance v0, Lcom/google_mms/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google_mms/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_1
    :try_start_1
    const-string v3, "PduPersister"

    const-string v4, "Failed to open Input/Output stream."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google_mms/android/mms/MmsException;

    const-string v3, "File not found."

    invoke-direct {v0, v3}, Lcom/google_mms/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    :cond_3
    :goto_4
    throw v0

    :cond_4
    :try_start_4
    const-string v3, "text"

    new-instance v4, Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v0}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;-><init>([B)V

    invoke-virtual {v4}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_5
    :try_start_5
    const-string v3, "PduPersister"

    const-string v4, "Failed to read/write data."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google_mms/android/mms/MmsException;

    const-string v3, "Read or write file failure."

    invoke-direct {v0, v3}, Lcom/google_mms/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_5
    :try_start_6
    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v2

    if-nez v0, :cond_d

    :try_start_7
    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_6

    if-ne v0, p2, :cond_9

    :cond_6
    const-string v0, "PduPersister"

    const-string v3, "Can\'t find data for this part."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_6
    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_7
    :goto_7
    if-eqz v1, :cond_8

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_8
    :goto_8
    return-void

    :catch_2
    move-exception v0

    const-string v3, "PduPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException while closing: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catch_3
    move-exception v0

    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException while closing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :cond_9
    :try_start_a
    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    const-string v3, "PduPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Saving data to: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_a

    const-string v3, "PduPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "the valude of ContentResolver.openInputStream() is null . InputStream uri:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_4
    move-exception v0

    goto/16 :goto_1

    :cond_a
    const/16 v0, 0x100

    new-array v0, v0, [B

    :goto_9
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_c

    :goto_a
    if-eqz v2, :cond_b

    :try_start_b
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :cond_b
    :goto_b
    if-eqz v1, :cond_8

    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_8

    :catch_5
    move-exception v0

    const-string v2, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException while closing: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    :cond_c
    const/4 v4, 0x0

    :try_start_d
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_9

    :catch_6
    move-exception v0

    goto/16 :goto_5

    :cond_d
    const-string v3, "PduPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Saving data to: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_a

    :catch_7
    move-exception v3

    const-string v4, "PduPersister"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IOException while closing: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :catch_8
    move-exception v2

    const-string v3, "PduPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException while closing: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :catch_9
    move-exception v0

    const-string v3, "PduPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "IOException while closing: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto/16 :goto_2

    :cond_e
    move-object v2, v1

    goto/16 :goto_a
.end method

.method private setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google_mms/android/mms/pdu/PduHeaders;I)V
    .locals 3

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->CHARSET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v2, Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    invoke-static {v1}, Lcom/google_mms/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v2, v0, v1}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {p3, v2, p4}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google_mms/android/mms/pdu/EncodedStringValue;I)V

    :cond_0
    return-void
.end method

.method private setLongToHeaders(Landroid/database/Cursor;ILcom/google_mms/android/mms/pdu/PduHeaders;I)V
    .locals 2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {p3, v0, v1, p4}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    :cond_0
    return-void
.end method

.method private setOctetToHeaders(Landroid/database/Cursor;ILcom/google_mms/android/mms/pdu/PduHeaders;I)V
    .locals 1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p3, v0, p4}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setOctet(II)V

    :cond_0
    return-void
.end method

.method private setTextStringToHeaders(Landroid/database/Cursor;ILcom/google_mms/android/mms/pdu/PduHeaders;I)V
    .locals 1

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p3, v0, p4}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setTextString([BI)V

    :cond_0
    return-void
.end method

.method public static toIsoString([B)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "iso-8859-1"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "PduPersister"

    const-string v2, "ISO_8859_1 must be supported!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, ""

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v0, ""

    goto :goto_0
.end method

.method private updateAddress(JI[Lcom/google_mms/android/mms/pdu/EncodedStringValue;)V
    .locals 5

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://mms/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/addr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "type="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google_mms/android/mms/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google_mms/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google_mms/android/mms/pdu/EncodedStringValue;)V

    return-void
.end method

.method private updatePart(Landroid/net/Uri;Lcom/google_mms/android/mms/pdu/PduPart;)V
    .locals 7

    const/4 v4, 0x0

    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x7

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/PduPart;->getCharset()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "chset"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v6

    const-string v0, "ct"

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "fn"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/PduPart;->getName()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "name"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cd"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cid"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cl"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google_mms/android/mms/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/PduPart;->getData()[B

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v0

    if-eq p1, v0, :cond_7

    :cond_6
    invoke-direct {p0, p2, p1, v6}, Lcom/google_mms/android/mms/pdu/PduPersister;->persistData(Lcom/google_mms/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    new-instance v0, Lcom/google_mms/android/mms/MmsException;

    const-string v1, "MIME type of the part must be set."

    invoke-direct {v0, v1}, Lcom/google_mms/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getPendingMessages(J)Landroid/database/Cursor;
    .locals 7

    sget-object v0, Lcom/google_mms/android/mms/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v0, "protocol"

    const-string v1, "mms"

    invoke-virtual {v2, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string v4, "err_type < ? AND due_time <= ?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v6, "due_time"

    invoke-static/range {v0 .. v6}, Lcom/google_mms/android/mms/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public load(Landroid/net/Uri;)Lcom/google_mms/android/mms/pdu/GenericPdu;
    .locals 16

    const/4 v11, 0x0

    const/4 v10, 0x0

    const-wide/16 v8, -0x1

    :try_start_0
    sget-object v2, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google_mms/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "load: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " blocked by isUpdating()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v1, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    sget-object v1, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/google_mms/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google_mms/android/mms/util/PduCacheEntry;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google_mms/android/mms/util/PduCacheEntry;->getPdu()Lcom/google_mms/android/mms/pdu/GenericPdu;

    move-result-object v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v2, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    monitor-enter v2

    :try_start_4
    sget-object v3, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/google_mms/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    sget-object v3, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :goto_1
    return-object v1

    :catch_0
    move-exception v1

    :try_start_5
    const-string v3, "PduPersister"

    const-string v4, "load: "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v2

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    move-wide v3, v8

    move v5, v10

    :goto_2
    sget-object v2, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    monitor-enter v2

    if-eqz v11, :cond_f

    :try_start_7
    sget-boolean v6, Lcom/google_mms/android/mms/pdu/PduPersister;->$assertionsDisabled:Z

    if-nez v6, :cond_e

    sget-object v6, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/google_mms/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v1

    monitor-exit v2

    throw v1

    :catchall_3
    move-exception v1

    monitor-exit v2

    throw v1

    :cond_0
    :try_start_8
    sget-object v1, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v3}, Lcom/google_mms/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v1 .. v7}, Lcom/google_mms/android/mms/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    new-instance v7, Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-direct {v7}, Lcom/google_mms/android/mms/pdu/PduHeaders;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-result-wide v12

    if-eqz v6, :cond_1

    :try_start_a
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    new-instance v1, Lcom/google_mms/android/mms/MmsException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bad uri: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google_mms/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v1

    move-wide v2, v8

    move v4, v10

    :goto_3
    if-eqz v6, :cond_2

    :try_start_b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v1

    move v5, v4

    move-wide v14, v2

    move-wide v3, v14

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    :try_start_c
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move-result v5

    const/4 v1, 0x2

    :try_start_d
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_9

    move-result-wide v3

    :try_start_e
    sget-object v1, Lcom/google_mms/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/google_mms/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8

    sget-object v1, Lcom/google_mms/android/mms/pdu/PduPersister;->LONG_COLUMN_INDEX_MAP:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_9

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google_mms/android/mms/pdu/PduPersister;->mBackupRestore:Z

    if-eqz v1, :cond_4

    const-string v1, "MMSLog"

    const-string v2, "load for backuprestore"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1b

    invoke-interface {v6, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0x1b

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "MMSLog"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "read value="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/16 v1, 0x80

    const/16 v2, 0x9b

    invoke-virtual {v7, v1, v2}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :cond_4
    if-eqz v6, :cond_5

    :try_start_f
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    const-wide/16 v1, -0x1

    cmp-long v1, v12, v1

    if-nez v1, :cond_a

    new-instance v1, Lcom/google_mms/android/mms/MmsException;

    const-string v2, "Error! ID of the message: -1."

    invoke-direct {v1, v2}, Lcom/google_mms/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_6
    move-exception v1

    goto/16 :goto_2

    :cond_6
    :try_start_10
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v7, v1}, Lcom/google_mms/android/mms/pdu/PduPersister;->setEncodedStringValueToHeaders(Landroid/database/Cursor;ILcom/google_mms/android/mms/pdu/PduHeaders;I)V

    goto/16 :goto_4

    :catchall_7
    move-exception v1

    move-wide v14, v3

    move-wide v2, v14

    move v4, v5

    goto/16 :goto_3

    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v7, v1}, Lcom/google_mms/android/mms/pdu/PduPersister;->setTextStringToHeaders(Landroid/database/Cursor;ILcom/google_mms/android/mms/pdu/PduHeaders;I)V

    goto/16 :goto_5

    :cond_8
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v7, v1}, Lcom/google_mms/android/mms/pdu/PduPersister;->setOctetToHeaders(Landroid/database/Cursor;ILcom/google_mms/android/mms/pdu/PduHeaders;I)V

    goto/16 :goto_6

    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v9, v7, v1}, Lcom/google_mms/android/mms/pdu/PduPersister;->setLongToHeaders(Landroid/database/Cursor;ILcom/google_mms/android/mms/pdu/PduHeaders;I)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    goto/16 :goto_7

    :cond_a
    :try_start_11
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v7}, Lcom/google_mms/android/mms/pdu/PduPersister;->loadAddress(JLcom/google_mms/android/mms/pdu/PduHeaders;)V

    const/16 v1, 0x8c

    invoke-virtual {v7, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v2

    new-instance v6, Lcom/google_mms/android/mms/pdu/PduBody;

    invoke-direct {v6}, Lcom/google_mms/android/mms/pdu/PduBody;-><init>()V

    const/16 v1, 0x84

    if-eq v2, v1, :cond_b

    const/16 v1, 0x80

    if-ne v2, v1, :cond_c

    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/google_mms/android/mms/pdu/PduPersister;->loadParts(J)[Lcom/google_mms/android/mms/pdu/PduPart;

    move-result-object v8

    if-eqz v8, :cond_c

    array-length v9, v8

    const/4 v1, 0x0

    :goto_8
    if-lt v1, v9, :cond_d

    :cond_c
    packed-switch v2, :pswitch_data_0

    new-instance v1, Lcom/google_mms/android/mms/MmsException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unrecognized PDU type: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google_mms/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    aget-object v10, v8, v1

    invoke-virtual {v6, v10}, Lcom/google_mms/android/mms/pdu/PduBody;->addPart(Lcom/google_mms/android/mms/pdu/PduPart;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :pswitch_0
    new-instance v1, Lcom/google_mms/android/mms/pdu/NotificationInd;

    invoke-direct {v1, v7}, Lcom/google_mms/android/mms/pdu/NotificationInd;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :goto_9
    sget-object v2, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    monitor-enter v2

    :try_start_12
    sget-boolean v6, Lcom/google_mms/android/mms/pdu/PduPersister;->$assertionsDisabled:Z

    if-nez v6, :cond_10

    sget-object v6, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/google_mms/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_10

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :catchall_8
    move-exception v1

    monitor-exit v2

    throw v1

    :pswitch_1
    :try_start_13
    new-instance v1, Lcom/google_mms/android/mms/pdu/DeliveryInd;

    invoke-direct {v1, v7}, Lcom/google_mms/android/mms/pdu/DeliveryInd;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;)V

    goto :goto_9

    :pswitch_2
    new-instance v1, Lcom/google_mms/android/mms/pdu/ReadOrigInd;

    invoke-direct {v1, v7}, Lcom/google_mms/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;)V

    goto :goto_9

    :pswitch_3
    new-instance v1, Lcom/google_mms/android/mms/pdu/RetrieveConf;

    invoke-direct {v1, v7, v6}, Lcom/google_mms/android/mms/pdu/RetrieveConf;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;Lcom/google_mms/android/mms/pdu/PduBody;)V

    goto :goto_9

    :pswitch_4
    new-instance v1, Lcom/google_mms/android/mms/pdu/SendReq;

    invoke-direct {v1, v7, v6}, Lcom/google_mms/android/mms/pdu/SendReq;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;Lcom/google_mms/android/mms/pdu/PduBody;)V

    goto :goto_9

    :pswitch_5
    new-instance v1, Lcom/google_mms/android/mms/pdu/AcknowledgeInd;

    invoke-direct {v1, v7}, Lcom/google_mms/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;)V

    goto :goto_9

    :pswitch_6
    new-instance v1, Lcom/google_mms/android/mms/pdu/NotifyRespInd;

    invoke-direct {v1, v7}, Lcom/google_mms/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;)V

    goto :goto_9

    :pswitch_7
    new-instance v1, Lcom/google_mms/android/mms/pdu/ReadRecInd;

    invoke-direct {v1, v7}, Lcom/google_mms/android/mms/pdu/ReadRecInd;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;)V

    goto :goto_9

    :pswitch_8
    new-instance v1, Lcom/google_mms/android/mms/MmsException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unsupported PDU type: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google_mms/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :cond_e
    :try_start_14
    new-instance v6, Lcom/google_mms/android/mms/util/PduCacheEntry;

    invoke-direct {v6, v11, v5, v3, v4}, Lcom/google_mms/android/mms/util/PduCacheEntry;-><init>(Lcom/google_mms/android/mms/pdu/GenericPdu;IJ)V

    sget-object v3, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v6}, Lcom/google_mms/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google_mms/android/mms/util/PduCacheEntry;)Z

    :cond_f
    sget-object v3, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/google_mms/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    sget-object v3, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    throw v1

    :cond_10
    :try_start_15
    new-instance v6, Lcom/google_mms/android/mms/util/PduCacheEntry;

    invoke-direct {v6, v1, v5, v3, v4}, Lcom/google_mms/android/mms/util/PduCacheEntry;-><init>(Lcom/google_mms/android/mms/pdu/GenericPdu;IJ)V

    sget-object v3, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v6}, Lcom/google_mms/android/mms/util/PduCache;->put(Landroid/net/Uri;Lcom/google_mms/android/mms/util/PduCacheEntry;)Z

    sget-object v3, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v4}, Lcom/google_mms/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    sget-object v3, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    goto/16 :goto_1

    :catchall_9
    move-exception v1

    move-wide v2, v8

    move v4, v5

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_4
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public load(Landroid/net/Uri;Z)Lcom/google_mms/android/mms/pdu/GenericPdu;
    .locals 2

    const-string v0, "MMSLog"

    const-string v1, "load for backuprestore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p2, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mBackupRestore:Z

    invoke-virtual {p0, p1}, Lcom/google_mms/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google_mms/android/mms/pdu/GenericPdu;

    move-result-object v0

    return-object v0
.end method

.method public move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8

    const/4 v4, 0x0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/google_mms/android/mms/MmsException;

    const-string v1, "Error! ID of the message: -1."

    invoke-direct {v0, v1}, Lcom/google_mms/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google_mms/android/mms/MmsException;

    const-string v1, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v0, v1}, Lcom/google_mms/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v3, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "msg_box"

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google_mms/android/mms/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persist(Lcom/google_mms/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 11

    if-nez p2, :cond_0

    new-instance v0, Lcom/google_mms/android/mms/MmsException;

    const-string v1, "Uri may not be null."

    invoke-direct {v0, v1}, Lcom/google_mms/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->MESSAGE_BOX_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_1

    new-instance v0, Lcom/google_mms/android/mms/MmsException;

    const-string v1, "Bad destination, must be one of content://mms/inbox, content://mms/sent, content://mms/drafts, content://mms/outbox, content://mms/temp."

    invoke-direct {v0, v1}, Lcom/google_mms/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sget-object v1, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    invoke-virtual {v0, p2}, Lcom/google_mms/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "PduPersister"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "persist: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " blocked by isUpdating()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    invoke-virtual {v0, p2}, Lcom/google_mms/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google_mms/android/mms/util/PduCacheEntry;

    const-string v0, "PduPersister"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "persist uri "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google_mms/android/mms/pdu/PduHeaders;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->ENCODED_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->TEXT_STRING_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_f

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->OCTET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_10

    iget-boolean v0, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mBackupRestore:Z

    if-eqz v0, :cond_6

    const-string v0, "PduPersister"

    const-string v1, "add READ"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9b

    invoke-virtual {v2, v0}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    const-string v1, "PduPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "READ="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_11

    const-string v1, "read"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_6
    :goto_4
    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->LONG_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_13

    iget-boolean v0, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mBackupRestore:Z

    if-nez v0, :cond_8

    const-string v0, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_8
    const-string v0, "PduPersister"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "mBackupRestore========="

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mBackupRestore:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/HashMap;

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v0, v0

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    sget-object v5, Lcom/google_mms/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v7, v5

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    if-lt v1, v7, :cond_14

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v5

    const/16 v7, 0x82

    if-eq v5, v7, :cond_9

    const/16 v7, 0x84

    if-eq v5, v7, :cond_9

    const/16 v7, 0x80

    if-ne v5, v7, :cond_b

    :cond_9
    const/4 v0, 0x0

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    move-object v1, v0

    :goto_7
    if-eqz v1, :cond_a

    array-length v5, v1

    const/4 v0, 0x0

    :goto_8
    if-lt v0, v5, :cond_17

    :cond_a
    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/google_mms/android/mms/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v0

    :cond_b
    const-string v2, "thread_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "PduPersister"

    const-string v1, "persist part begin "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    instance-of v0, p1, Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google_mms/android/mms/pdu/PduBody;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/google_mms/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    const/4 v0, 0x0

    :goto_9
    if-lt v0, v2, :cond_19

    :cond_c
    const-string v0, "PduPersister"

    const-string v1, "persist pdu begin "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "need_notify"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-boolean v0, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mBackupRestore:Z

    if-eqz v0, :cond_d

    const-string v0, "seen"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_d
    const-string v0, "PduPersister"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "values =================== "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1, p2, v3}, Lcom/google_mms/android/mms/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1a

    new-instance v0, Lcom/google_mms/android/mms/MmsException;

    const-string v1, "persist() failed: return null."

    invoke-direct {v0, v1}, Lcom/google_mms/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v2, "PduPersister"

    const-string v3, "persist1: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    if-eqz v5, :cond_3

    sget-object v7, Lcom/google_mms/android/mms/pdu/PduPersister;->CHARSET_COLUMN_NAME_MAP:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v7

    invoke-static {v7}, Lcom/google_mms/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/google_mms/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_3

    :cond_11
    const/16 v1, 0x80

    if-ne v0, v1, :cond_12

    const-string v0, "read"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    :cond_12
    const-string v0, "read"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_4

    :cond_13
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v1, v7, v9

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_5

    :cond_14
    aget v8, v5, v1

    const/4 v0, 0x0

    const/16 v9, 0x89

    if-ne v8, v9, :cond_16

    invoke-virtual {v2, v8}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    if-eqz v9, :cond_15

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    const/4 v10, 0x0

    aput-object v9, v0, v10

    :cond_15
    :goto_a
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_6

    :cond_16
    invoke-virtual {v2, v8}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    goto :goto_a

    :pswitch_1
    const/16 v0, 0x89

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-object v1, v0

    goto/16 :goto_7

    :pswitch_2
    const/16 v0, 0x97

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-object v1, v0

    goto/16 :goto_7

    :cond_17
    aget-object v7, v1, v0

    if-eqz v7, :cond_18

    invoke-virtual {v7}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_19
    invoke-virtual {v1, v0}, Lcom/google_mms/android/mms/pdu/PduBody;->getPart(I)Lcom/google_mms/android/mms/pdu/PduPart;

    move-result-object v5

    invoke-virtual {p0, v5, v7, v8}, Lcom/google_mms/android/mms/pdu/PduPersister;->persistPart(Lcom/google_mms/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_1a
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v9

    const-string v0, "PduPersister"

    const-string v1, "persist address begin "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/google_mms/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    if-lt v1, v3, :cond_1c

    const-string v0, "PduPersister"

    const-string v1, "persist update part begin "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    const-string v0, "mid"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "need_notify"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "content://mms/"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/part"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google_mms/android/mms/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    invoke-virtual {v0, p2}, Lcom/google_mms/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google_mms/android/mms/util/PduCacheEntry;

    const-string v0, "PduPersister"

    const-string v1, "persist purge end "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mBackupRestore:Z

    if-eqz v1, :cond_1b

    invoke-direct {p0, p1, v9, v10, v6}, Lcom/google_mms/android/mms/pdu/PduPersister;->checkAndUpdatePendingMsg(Lcom/google_mms/android/mms/pdu/GenericPdu;JLjava/lang/Integer;)Landroid/net/Uri;

    :cond_1b
    return-object v0

    :cond_1c
    aget v5, v2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    if-eqz v0, :cond_1d

    invoke-direct {p0, v9, v10, v5, v0}, Lcom/google_mms/android/mms/pdu/PduPersister;->persistAddress(JI[Lcom/google_mms/android/mms/pdu/EncodedStringValue;)V

    :cond_1d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public persist(Lcom/google_mms/android/mms/pdu/GenericPdu;Landroid/net/Uri;Z)Landroid/net/Uri;
    .locals 2

    const-string v0, "MMSLog"

    const-string v1, "persist for backuprestore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p3, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mBackupRestore:Z

    invoke-virtual {p0, p1, p2}, Lcom/google_mms/android/mms/pdu/PduPersister;->persist(Lcom/google_mms/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public persistPart(Lcom/google_mms/android/mms/pdu/PduPart;J)Landroid/net/Uri;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://mms/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/part"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    const/16 v0, 0x8

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/jpg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "image/jpeg"

    move-object v1, v0

    :goto_0
    const-string v0, "ct"

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/smil"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "seq"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getCharset()I

    move-result v0

    const-string v4, "application/smil"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_8

    const-string v4, "chset"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "fn"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getName()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "name"

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentDisposition()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    const-string v4, "cd"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    const-string v4, "cid"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    const-string v4, "cl"

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v4, v2, v3}, Lcom/google_mms/android/mms/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/google_mms/android/mms/MmsException;

    const-string v1, "Failed to persist part, return null."

    invoke-direct {v0, v1}, Lcom/google_mms/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v0, Lcom/google_mms/android/mms/MmsException;

    const-string v1, "MIME type of the part must be set."

    invoke-direct {v0, v1}, Lcom/google_mms/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string v0, "chset"

    const/16 v4, 0x6a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    :cond_9
    invoke-direct {p0, p1, v0, v1}, Lcom/google_mms/android/mms/pdu/PduPersister;->persistData(Lcom/google_mms/android/mms/pdu/PduPart;Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google_mms/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    return-object v0

    :cond_a
    move-object v1, v0

    goto/16 :goto_0
.end method

.method public release()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "content://mms/9223372036854775807/part"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v1, v2, v0, v3, v3}, Lcom/google_mms/android/mms/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateHeaders(Landroid/net/Uri;Lcom/google_mms/android/mms/pdu/SendReq;)V
    .locals 12

    const-wide/16 v8, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    invoke-virtual {v0, p1}, Lcom/google_mms/android/mms/util/PduCache;->purge(Landroid/net/Uri;)Lcom/google_mms/android/mms/util/PduCacheEntry;

    sget-object v1, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    invoke-virtual {v0, p1}, Lcom/google_mms/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PduPersister"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "updateHeaders: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " blocked by isUpdating()"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    new-instance v3, Landroid/content/ContentValues;

    const/16 v0, 0xa

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/SendReq;->getContentType()[B

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "ct_t"

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/SendReq;->getDate()J

    move-result-wide v0

    cmp-long v5, v0, v8

    if-eqz v5, :cond_2

    const-string v5, "date"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/SendReq;->getTime()J

    move-result-wide v0

    const-string v5, "PduPersister"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "time ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v5, v0, v8

    if-eqz v5, :cond_3

    const-string v5, "time"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_3
    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/SendReq;->getDeliveryReport()I

    move-result v0

    if-eqz v0, :cond_4

    const-string v1, "d_rpt"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_4
    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/SendReq;->getExpiry()J

    move-result-wide v0

    cmp-long v5, v0, v8

    if-eqz v5, :cond_5

    const-string v5, "exp"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/SendReq;->getMessageClass()[B

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v1, "m_cls"

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/SendReq;->getPriority()I

    move-result v0

    if-eqz v0, :cond_7

    const-string v1, "pri"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_7
    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/SendReq;->getReadReport()I

    move-result v0

    if-eqz v0, :cond_8

    const-string v1, "rr"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_8
    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "tr_id"

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/SendReq;->getSubject()Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-eqz v0, :cond_b

    const-string v1, "sub"

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v5

    invoke-static {v5}, Lcom/google_mms/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sub_cs"

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_1
    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/SendReq;->getMessageSize()J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_a

    const-string v5, "m_size"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_a
    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/SendReq;->getPduHeaders()Lcom/google_mms/android/mms/pdu/PduHeaders;

    move-result-object v6

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    sget-object v8, Lcom/google_mms/android/mms/pdu/PduPersister;->ADDRESS_FIELDS:[I

    array-length v9, v8

    move v1, v2

    :goto_2
    if-lt v1, v9, :cond_c

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    invoke-static {v0, v7}, Lcom/google_mms/android/mms/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J

    move-result-wide v0

    const-string v2, "thread_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/google_mms/android/mms/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "PduPersister"

    const-string v5, "updateHeaders: "

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_b
    const-string v0, "sub"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    aget v5, v8, v1

    const/16 v0, 0x89

    if-ne v5, v0, :cond_e

    invoke-virtual {v6, v5}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v10

    if-eqz v10, :cond_11

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    aput-object v10, v0, v2

    :goto_3
    if-eqz v0, :cond_d

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v10

    invoke-direct {p0, v10, v11, v5, v0}, Lcom/google_mms/android/mms/pdu/PduPersister;->updateAddress(JI[Lcom/google_mms/android/mms/pdu/EncodedStringValue;)V

    const/16 v10, 0x97

    if-ne v5, v10, :cond_d

    array-length v10, v0

    move v5, v2

    :goto_4
    if-lt v5, v10, :cond_f

    :cond_d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_e
    invoke-virtual {v6, v5}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    goto :goto_3

    :cond_f
    aget-object v11, v0, v5

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_11
    move-object v0, v4

    goto :goto_3
.end method

.method public updateParts(Landroid/net/Uri;Lcom/google_mms/android/mms/pdu/PduBody;)V
    .locals 11

    const/4 v1, 0x0

    const/4 v10, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-object v3, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    invoke-virtual {v0, p1}, Lcom/google_mms/android/mms/util/PduCache;->isUpdating(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PduPersister"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateParts: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " blocked by isUpdating()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    invoke-virtual {v0, p1}, Lcom/google_mms/android/mms/util/PduCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google_mms/android/mms/util/PduCacheEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google_mms/android/mms/util/PduCacheEntry;->getPdu()Lcom/google_mms/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;

    invoke-virtual {v0, p2}, Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google_mms/android/mms/pdu/PduBody;)V

    :cond_0
    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    const/4 v4, 0x1

    invoke-virtual {v0, p1, v4}, Lcom/google_mms/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v0, v2

    :goto_1
    if-lt v0, v5, :cond_1

    const/16 v0, 0x29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v7

    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/google_mms/android/mms/pdu/PduPersister;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/google_mms/android/mms/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, "/part"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v10, 0x2

    if-le v0, v10, :cond_5

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v1, 0x0

    invoke-static {v2, v5, v9, v0, v1}, Lcom/google_mms/android/mms/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v0

    if-nez v0, :cond_7

    sget-object v1, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    monitor-enter v1

    :try_start_5
    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/google_mms/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    return-void

    :catch_0
    move-exception v0

    :try_start_6
    const-string v4, "PduPersister"

    const-string v5, "updateParts: "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v3

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    sget-object v1, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    monitor-enter v1

    :try_start_8
    sget-object v2, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/google_mms/android/mms/util/PduCache;->setUpdating(Landroid/net/Uri;Z)V

    sget-object v2, Lcom/google_mms/android/mms/pdu/PduPersister;->PDU_CACHE_INSTANCE:Lcom/google_mms/android/mms/util/PduCache;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v0

    :cond_1
    :try_start_9
    invoke-virtual {p2, v0}, Lcom/google_mms/android/mms/pdu/PduBody;->getPart(I)Lcom/google_mms/android/mms/pdu/PduPart;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google_mms/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mms"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v4, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v10, :cond_4

    const-string v2, " AND "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v2, "_id"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "!="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/database/DatabaseUtils;->appendEscapedSQLString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    move-object v0, v1

    goto/16 :goto_2

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google_mms/android/mms/pdu/PduPart;

    invoke-virtual {p0, v0, v7, v8}, Lcom/google_mms/android/mms/pdu/PduPersister;->persistPart(Lcom/google_mms/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    goto/16 :goto_3

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google_mms/android/mms/pdu/PduPart;

    invoke-direct {p0, v1, v0}, Lcom/google_mms/android/mms/pdu/PduPersister;->updatePart(Landroid/net/Uri;Lcom/google_mms/android/mms/pdu/PduPart;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
.end method
