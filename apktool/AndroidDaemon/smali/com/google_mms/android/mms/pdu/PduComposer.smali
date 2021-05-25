.class public Lcom/google_mms/android/mms/pdu/PduComposer;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOG_TAG:Ljava/lang/String; = "PduComposer"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final PDU_COMPOSER_BLOCK_SIZE:I = 0x400

.field private static final PDU_COMPOSE_CONTENT_ERROR:I = 0x1

.field private static final PDU_COMPOSE_FIELD_NOT_SET:I = 0x2

.field private static final PDU_COMPOSE_FIELD_NOT_SUPPORTED:I = 0x3

.field private static final PDU_COMPOSE_SUCCESS:I = 0x0

.field private static final PDU_EMAIL_ADDRESS_TYPE:I = 0x2

.field private static final PDU_IPV4_ADDRESS_TYPE:I = 0x3

.field private static final PDU_IPV6_ADDRESS_TYPE:I = 0x4

.field private static final PDU_PHONE_NUMBER_ADDRESS_TYPE:I = 0x1

.field private static final PDU_UNKNOWN_ADDRESS_TYPE:I = 0x5

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field static final REGEXP_EMAIL_ADDRESS_TYPE:Ljava/lang/String; = "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

.field static final REGEXP_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

.field static final REGEXP_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

.field static final REGEXP_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "\\+?[0-9|\\.|\\-]+"

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field static final STRING_IPV4_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV4"

.field static final STRING_IPV6_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=IPV6"

.field static final STRING_PHONE_NUMBER_ADDRESS_TYPE:Ljava/lang/String; = "/TYPE=PLMN"

.field private static final TEXT_MAX:I = 0x7f

.field private static mContentTypeMap:Ljava/util/HashMap;


# instance fields
.field private mForBackup:Z

.field protected mMessage:Ljava/io/ByteArrayOutputStream;

.field private mPdu:Lcom/google_mms/android/mms/pdu/GenericPdu;

.field private mPduHeader:Lcom/google_mms/android/mms/pdu/PduHeaders;

.field protected mPosition:I

.field private final mResolver:Landroid/content/ContentResolver;

.field private mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x0

    const-class v0, Lcom/google_mms/android/mms/pdu/PduComposer;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google_mms/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    :goto_1
    sget-object v0, Lcom/google_mms/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v0, v0

    if-lt v1, v0, :cond_1

    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/google_mms/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    sget-object v2, Lcom/google_mms/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google_mms/android/mms/pdu/GenericPdu;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput-object v1, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPdu:Lcom/google_mms/android/mms/pdu/GenericPdu;

    iput v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I

    iput-object v1, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    iput-object v1, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google_mms/android/mms/pdu/PduHeaders;

    iput-boolean v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mForBackup:Z

    iput-object p2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPdu:Lcom/google_mms/android/mms/pdu/GenericPdu;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p2}, Lcom/google_mms/android/mms/pdu/GenericPdu;->getPduHeaders()Lcom/google_mms/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google_mms/android/mms/pdu/PduHeaders;

    new-instance v0, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-direct {v0, p0, v1}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;-><init>(Lcom/google_mms/android/mms/pdu/PduComposer;Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;)V

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I

    return-void
.end method

.method static synthetic access$0(Lcom/google_mms/android/mms/pdu/PduComposer;)Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;
    .locals 1

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    return-object v0
.end method

.method private appendAddressType(Lcom/google_mms/android/mms/pdu/EncodedStringValue;)Lcom/google_mms/android/mms/pdu/EncodedStringValue;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->checkAddressType(Ljava/lang/String;)I

    move-result v1

    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->copy(Lcom/google_mms/android/mms/pdu/EncodedStringValue;)Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    const-string v1, "/TYPE=PLMN"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x3

    if-ne v2, v1, :cond_2

    const-string v1, "/TYPE=IPV4"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->appendTextString([B)V

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x4

    if-ne v2, v1, :cond_0

    const-string v1, "/TYPE=IPV6"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private appendHeader(I)I
    .locals 8

    const/4 v1, 0x0

    const/16 v7, 0x81

    const/16 v6, 0x80

    const/4 v2, 0x1

    const/4 v0, 0x2

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v1, 0x3

    :cond_0
    :goto_0
    return v1

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-virtual {v0, p1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-virtual {v2, p1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    if-nez v2, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_0

    :pswitch_3
    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-virtual {v3, p1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    if-nez v3, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_0

    aget-object v4, v3, v0

    invoke-direct {p0, v4}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google_mms/android/mms/pdu/EncodedStringValue;)Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v4

    if-nez v4, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v4}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google_mms/android/mms/pdu/EncodedStringValue;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-virtual {v0, p1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "insert-address-token"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->append(I)V

    invoke-virtual {p0, v7}, Lcom/google_mms/android/mms/pdu/PduComposer;->append(I)V

    goto :goto_0

    :cond_6
    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v3}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v3}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v3

    invoke-virtual {p0, v6}, Lcom/google_mms/android/mms/pdu/PduComposer;->append(I)V

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendAddressType(Lcom/google_mms/android/mms/pdu/EncodedStringValue;)Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-nez v0, :cond_7

    move v1, v2

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google_mms/android/mms/pdu/EncodedStringValue;)V

    invoke-virtual {v3}, Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v0

    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v2}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->pop()V

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendValueLength(J)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-virtual {v2, p1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v2

    if-nez v2, :cond_8

    move v1, v0

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, p1}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-virtual {v2, p1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v4, v2

    if-nez v4, :cond_9

    move v1, v0

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, p1}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v2, v3}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendDateValue(J)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-virtual {v2, p1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    if-nez v2, :cond_a

    move v1, v0

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0, p1}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google_mms/android/mms/pdu/EncodedStringValue;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-virtual {v2, p1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    if-nez v2, :cond_b

    move v1, v0

    goto/16 :goto_0

    :cond_b
    invoke-virtual {p0, p1}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    const-string v0, "advertisement"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, v7}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_0

    :cond_c
    const-string v0, "auto"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "personal"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v6}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_0

    :cond_e
    const-string v0, "informational"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v2, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    goto/16 :goto_0

    :cond_f
    invoke-virtual {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-virtual {v2, p1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v4, v2

    if-nez v4, :cond_10

    move v1, v0

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0, p1}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v0

    iget-boolean v4, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mForBackup:Z

    if-eqz v4, :cond_11

    const-string v4, "PduComposer"

    const-string v5, "absolute token"

    invoke-static {v4, v5}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/google_mms/android/mms/pdu/PduComposer;->append(I)V

    :goto_2
    invoke-virtual {p0, v2, v3}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v0

    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v2}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->pop()V

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendValueLength(J)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto/16 :goto_0

    :cond_11
    const-string v4, "PduComposer"

    const-string v5, "relative token"

    invoke-static {v4, v5}, Lcom/vivo/PCTools/util/b;->logE(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/google_mms/android/mms/pdu/PduComposer;->append(I)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected static checkAddressType(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x5

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}\\.{1}[0-9]{1,3}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    const-string v1, "\\+?[0-9|\\.|\\-]+"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "[a-zA-Z| ]*\\<{0,1}[a-zA-Z| ]+@{1}[a-zA-Z| ]+\\.{1}[a-zA-Z| ]+\\>{0,1}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v1, "[a-fA-F]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}\\:{1}[a-fA-F0-9]{4}"

    invoke-virtual {p0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const-string v1, "PduComposer"

    const-string v2, "checkAddressType PDU_UNKNOWN_ADDRESS_TYPE"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private makeAckInd()I
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput v1, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I

    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    goto :goto_0
.end method

.method private makeMessageBody(I)I
    .locals 11

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v3, 0x84

    invoke-virtual {v2, v3}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    sget-object v2, Lcom/google_mms/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPdu:Lcom/google_mms/android/mms/pdu/GenericPdu;

    check-cast v0, Lcom/google_mms/android/mms/pdu/RetrieveConf;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/RetrieveConf;->getBody()Lcom/google_mms/android/mms/pdu/PduBody;

    move-result-object v0

    move-object v2, v0

    :goto_1
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/google_mms/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    const-string v0, "PduComposer"

    const-string v1, "makeMessageBody body == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->pop()V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->copy()V

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_16

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPdu:Lcom/google_mms/android/mms/pdu/GenericPdu;

    check-cast v0, Lcom/google_mms/android/mms/pdu/SendReq;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/SendReq;->getBody()Lcom/google_mms/android/mms/pdu/PduBody;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2, v0}, Lcom/google_mms/android/mms/pdu/PduBody;->getPart(I)Lcom/google_mms/android/mms/pdu/PduPart;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v3

    if-eqz v3, :cond_4

    const/16 v4, 0x8a

    invoke-virtual {p0, v4}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v4, 0x3c

    const/4 v5, 0x0

    aget-byte v5, v3, v5

    if-ne v4, v5, :cond_5

    const/16 v4, 0x3e

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v3, v5

    if-ne v4, v5, :cond_5

    invoke-virtual {p0, v3}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendTextString([B)V

    :cond_4
    :goto_2
    const/16 v3, 0x89

    invoke-virtual {p0, v3}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendTextString([B)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v1}, Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v0

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v1}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->pop()V

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendValueLength(J)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->copy()V

    invoke-virtual {v2}, Lcom/google_mms/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    int-to-long v0, v3

    invoke-virtual {p0, v0, v1}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-lt v1, v3, :cond_6

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_5
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "<"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendTextString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v1}, Lcom/google_mms/android/mms/pdu/PduBody;->getPart(I)Lcom/google_mms/android/mms/pdu/PduPart;

    move-result-object v4

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v5

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v6

    invoke-virtual {v4}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v7

    if-nez v7, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_7
    sget-object v0, Lcom/google_mms/android/mms/pdu/PduComposer;->mContentTypeMap:Ljava/util/HashMap;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_11

    invoke-virtual {p0, v7}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendTextString([B)V

    :goto_5
    invoke-virtual {v4}, Lcom/google_mms/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v7, v0

    if-nez v7, :cond_b

    :cond_8
    invoke-virtual {v4}, Lcom/google_mms/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    if-eqz v0, :cond_9

    array-length v7, v0

    if-nez v7, :cond_b

    :cond_9
    invoke-virtual {v4}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    if-eqz v0, :cond_a

    array-length v7, v0

    if-nez v7, :cond_b

    :cond_a
    invoke-virtual {v4}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    if-eqz v0, :cond_12

    array-length v7, v0

    if-eqz v7, :cond_12

    const-string v7, "PduComposer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "makeMessageBody name 1= "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v0, :cond_c

    array-length v7, v0

    if-eqz v7, :cond_c

    const-string v7, "PduComposer"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "makeMessageBody name 2= "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vivo/PCTools/util/b;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    const/16 v7, 0x85

    invoke-virtual {p0, v7}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendTextString([B)V

    invoke-virtual {v4}, Lcom/google_mms/android/mms/pdu/PduPart;->getCharset()I

    move-result v0

    if-eqz v0, :cond_d

    const/16 v7, 0x81

    invoke-virtual {p0, v7}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    :cond_d
    invoke-virtual {v6}, Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v0

    iget-object v6, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v6}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->pop()V

    int-to-long v6, v0

    invoke-virtual {p0, v6, v7}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendValueLength(J)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->copy()V

    invoke-virtual {v4}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    if-eqz v0, :cond_e

    array-length v6, v0

    if-eqz v6, :cond_e

    const/16 v6, 0xc0

    invoke-virtual {p0, v6}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v6, 0x3c

    const/4 v7, 0x0

    aget-byte v7, v0, v7

    if-ne v6, v7, :cond_13

    const/16 v6, 0x3e

    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, v0, v7

    if-ne v6, v7, :cond_13

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    :cond_e
    :goto_6
    invoke-virtual {v4}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    if-eqz v0, :cond_f

    array-length v6, v0

    if-eqz v6, :cond_f

    const/16 v6, 0x8e

    invoke-virtual {p0, v6}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendTextString([B)V

    :cond_f
    invoke-virtual {v5}, Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v6

    const/4 v0, 0x0

    invoke-virtual {v4}, Lcom/google_mms/android/mms/pdu/PduPart;->getData()[B

    move-result-object v7

    if-eqz v7, :cond_14

    const/4 v0, 0x0

    array-length v4, v7

    invoke-virtual {p0, v7, v0, v4}, Lcom/google_mms/android/mms/pdu/PduComposer;->arraycopy([BII)V

    array-length v0, v7

    :cond_10
    invoke-virtual {v5}, Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v4

    sub-int/2addr v4, v6

    if-eq v0, v4, :cond_15

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "BUG: Length sanity check failed"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    goto/16 :goto_5

    :cond_12
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_13
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "<"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ">"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendQuotedString(Ljava/lang/String;)V

    goto :goto_6

    :cond_14
    const/16 v7, 0x400

    :try_start_2
    new-array v7, v7, [B

    iget-object v8, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4}, Lcom/google_mms/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    :goto_7
    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_10

    iget-object v9, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    const/4 v10, 0x0

    invoke-virtual {v9, v7, v10, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget v9, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v9, v8

    iput v9, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_3

    add-int/2addr v0, v8

    goto :goto_7

    :catch_1
    move-exception v0

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    const/4 v0, 0x1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_15
    iget-object v4, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v4}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->pop()V

    int-to-long v4, v6

    invoke-virtual {p0, v4, v5}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->copy()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4

    :cond_16
    move-object v2, v0

    goto/16 :goto_1
.end method

.method private makeNotifyInd()I
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I

    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v0, 0x82

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v0, 0x98

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/16 v0, 0x8a

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const/16 v0, 0x8e

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPdu:Lcom/google_mms/android/mms/pdu/GenericPdu;

    check-cast v0, Lcom/google_mms/android/mms/pdu/NotificationInd;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/NotificationInd;->getMessageSize()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    const/16 v0, 0x88

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    const/16 v0, 0x83

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPdu:Lcom/google_mms/android/mms/pdu/GenericPdu;

    check-cast v0, Lcom/google_mms/android/mms/pdu/NotificationInd;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v3, "PduComposer"

    const-string v4, "makeNotifyInd contentLocation != null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendTextString([B)V

    :goto_1
    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPdu:Lcom/google_mms/android/mms/pdu/GenericPdu;

    check-cast v0, Lcom/google_mms/android/mms/pdu/NotificationInd;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/NotificationInd;->getSubject()Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v3, "PduComposer"

    const-string v4, "makeNotifyInd subject != null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x96

    invoke-virtual {p0, v3}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendEncodedString(Lcom/google_mms/android/mms/pdu/EncodedStringValue;)V

    :goto_2
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x89

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_5
    const-string v0, "PduComposer"

    const-string v3, "makeNotifyInd contentLocation  = null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string v0, "PduComposer"

    const-string v3, "makeNotifyInd subject  = null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const/16 v0, 0x95

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    goto/16 :goto_0

    :cond_8
    move v0, v2

    goto/16 :goto_0
.end method

.method private makeNotifyResp()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput v1, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I

    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v2, 0x83

    invoke-virtual {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v2, 0x98

    invoke-direct {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x95

    invoke-direct {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v0, 0x91

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move v0, v1

    goto :goto_0
.end method

.method private makeReadRecInd()I
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v2, :cond_0

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput v1, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I

    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v2, 0x87

    invoke-virtual {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v2, 0x8d

    invoke-direct {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/16 v2, 0x8b

    invoke-direct {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x97

    invoke-direct {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x89

    invoke-direct {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x85

    invoke-direct {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v2, 0x9b

    invoke-direct {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v2

    if-nez v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method private makeRetrievePdu()I
    .locals 6

    const/16 v5, 0x98

    const/16 v4, 0x84

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "PduComposer"

    const-string v3, "makeRetrievePdu begin"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I

    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v4}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-virtual {v0, v5}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "PduComposer"

    const-string v3, "Transaction ID is null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    return v1

    :cond_2
    invoke-virtual {p0, v5}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendTextString([B)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x89

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x97

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eq v0, v1, :cond_7

    move v0, v1

    :goto_2
    const/16 v3, 0x82

    invoke-direct {p0, v3}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v1, :cond_4

    move v0, v1

    :cond_4
    const/16 v3, 0x81

    invoke-direct {p0, v3}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v1, :cond_5

    move v0, v1

    :cond_5
    if-eqz v0, :cond_1

    const/16 v0, 0x96

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x8a

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x88

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x8f

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x86

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x90

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    iget-boolean v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mForBackup:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x9b

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    :cond_6
    invoke-virtual {p0, v4}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-direct {p0, v1}, Lcom/google_mms/android/mms/pdu/PduComposer;->makeMessageBody(I)I

    const-string v0, "PduComposer"

    const-string v1, "makeRetrievePdu end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2
.end method

.method private makeSendReqPdu()I
    .locals 4

    const/16 v3, 0x98

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    iput v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I

    :cond_0
    const/16 v0, 0x8c

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    invoke-virtual {p0, v3}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPduHeader:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-virtual {v0, v3}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Transaction-ID is null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendTextString([B)V

    const/16 v0, 0x8d

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    :goto_0
    return v1

    :cond_3
    const/16 v0, 0x85

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x89

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x97

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v0

    if-eq v0, v1, :cond_6

    move v0, v1

    :goto_1
    const/16 v3, 0x82

    invoke-direct {p0, v3}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v1, :cond_4

    move v0, v1

    :cond_4
    const/16 v3, 0x81

    invoke-direct {p0, v3}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    move-result v3

    if-eq v3, v1, :cond_5

    move v0, v1

    :cond_5
    if-eqz v0, :cond_2

    const/16 v0, 0x96

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x8a

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x88

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x8f

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x86

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x90

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendHeader(I)I

    const/16 v0, 0x84

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendOctet(I)V

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->makeMessageBody(I)I

    move v1, v2

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method protected append(I)V
    .locals 1

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I

    return-void
.end method

.method protected appendDateValue(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendLongInteger(J)V

    return-void
.end method

.method protected appendEncodedString(Lcom/google_mms/android/mms/pdu/EncodedStringValue;)V
    .locals 3

    sget-boolean v0, Lcom/google_mms/android/mms/pdu/PduComposer;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getCharacterSet()I

    move-result v0

    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v2}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->newbuf()V

    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v2}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->mark()Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendShortInteger(I)V

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendTextString([B)V

    invoke-virtual {v2}, Lcom/google_mms/android/mms/pdu/PduComposer$PositionMarker;->getLength()I

    move-result v0

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v1}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->pop()V

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendValueLength(J)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mStack:Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/PduComposer$BufferStack;->copy()V

    goto :goto_0
.end method

.method protected appendLongInteger(J)V
    .locals 8

    const/16 v7, 0x8

    const/4 v1, 0x0

    move-wide v2, p1

    move v4, v1

    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-eqz v0, :cond_0

    if-lt v4, v7, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendShortLength(I)V

    add-int/lit8 v0, v4, -0x1

    shl-int/lit8 v0, v0, 0x3

    :goto_1
    if-lt v1, v4, :cond_2

    return-void

    :cond_1
    ushr-long/2addr v2, v7

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    ushr-long v2, p1, v0

    const-wide/16 v5, 0xff

    and-long/2addr v2, v5

    long-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->append(I)V

    add-int/lit8 v0, v0, -0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected appendOctet(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google_mms/android/mms/pdu/PduComposer;->append(I)V

    return-void
.end method

.method protected appendQuotedString(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendQuotedString([B)V

    return-void
.end method

.method protected appendQuotedString([B)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->append(I)V

    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->arraycopy([BII)V

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduComposer;->append(I)V

    return-void
.end method

.method protected appendShortInteger(I)V
    .locals 1

    or-int/lit16 v0, p1, 0x80

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->append(I)V

    return-void
.end method

.method protected appendShortLength(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google_mms/android/mms/pdu/PduComposer;->append(I)V

    return-void
.end method

.method protected appendTextString(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendTextString([B)V

    return-void
.end method

.method protected appendTextString([B)V
    .locals 3

    const/16 v2, 0x7f

    const/4 v1, 0x0

    aget-byte v0, p1, v1

    and-int/lit16 v0, v0, 0xff

    if-le v0, v2, :cond_0

    invoke-virtual {p0, v2}, Lcom/google_mms/android/mms/pdu/PduComposer;->append(I)V

    :cond_0
    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->arraycopy([BII)V

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduComposer;->append(I)V

    return-void
.end method

.method protected appendUintvarInteger(J)V
    .locals 7

    const-wide/16 v3, 0x7f

    const/4 v0, 0x0

    move-wide v1, v3

    :goto_0
    const/4 v5, 0x5

    if-lt v0, v5, :cond_1

    :cond_0
    :goto_1
    if-gtz v0, :cond_2

    and-long v0, p1, v3

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->append(I)V

    return-void

    :cond_1
    cmp-long v5, p1, v1

    if-ltz v5, :cond_0

    const/4 v5, 0x7

    shl-long/2addr v1, v5

    or-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    mul-int/lit8 v1, v0, 0x7

    ushr-long v1, p1, v1

    and-long/2addr v1, v3

    const-wide/16 v5, 0x80

    or-long/2addr v1, v5

    const-wide/16 v5, 0xff

    and-long/2addr v1, v5

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduComposer;->append(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method protected appendValueLength(J)V
    .locals 2

    const-wide/16 v0, 0x1f

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendShortLength(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x1f

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduComposer;->append(I)V

    invoke-virtual {p0, p1, p2}, Lcom/google_mms/android/mms/pdu/PduComposer;->appendUintvarInteger(J)V

    goto :goto_0
.end method

.method protected arraycopy([BII)V
    .locals 1

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPosition:I

    return-void
.end method

.method public make()[B
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mPdu:Lcom/google_mms/android/mms/pdu/GenericPdu;

    invoke-virtual {v1}, Lcom/google_mms/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lcom/google_mms/android/mms/pdu/PduComposer;->makeSendReqPdu()I

    move-result v1

    if-nez v1, :cond_0

    :cond_1
    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mMessage:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/google_mms/android/mms/pdu/PduComposer;->makeNotifyInd()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/google_mms/android/mms/pdu/PduComposer;->makeNotifyResp()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/google_mms/android/mms/pdu/PduComposer;->makeAckInd()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/google_mms/android/mms/pdu/PduComposer;->makeReadRecInd()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/google_mms/android/mms/pdu/PduComposer;->makeRetrievePdu()I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public make(Z)[B
    .locals 1

    iput-boolean p1, p0, Lcom/google_mms/android/mms/pdu/PduComposer;->mForBackup:Z

    invoke-virtual {p0}, Lcom/google_mms/android/mms/pdu/PduComposer;->make()[B

    move-result-object v0

    return-object v0
.end method
