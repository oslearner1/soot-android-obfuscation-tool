.class public Lcom/google_mms/android/mms/pdu/PduParser;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final DEBUG:Z = true

.field private static final END_STRING_FLAG:I = 0x0

.field private static final LENGTH_QUOTE:I = 0x1f

.field private static final LOCAL_LOGV:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "PduParser"

.field private static final LONG_INTEGER_LENGTH_MAX:I = 0x8

.field private static final QUOTE:I = 0x7f

.field private static final QUOTED_STRING_FLAG:I = 0x22

.field private static final SHORT_INTEGER_MAX:I = 0x7f

.field private static final SHORT_LENGTH_MAX:I = 0x1e

.field private static final TEXT_MAX:I = 0x7f

.field private static final TEXT_MIN:I = 0x20

.field private static final THE_FIRST_PART:I = 0x0

.field private static final THE_LAST_PART:I = 0x1

.field private static final TYPE_QUOTED_STRING:I = 0x1

.field private static final TYPE_TEXT_STRING:I = 0x0

.field private static final TYPE_TOKEN_STRING:I = 0x2

.field private static mStartParam:[B

.field private static mTypeParam:[B


# instance fields
.field private mBody:Lcom/google_mms/android/mms/pdu/PduBody;

.field private mForRestore:Z

.field private mHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

.field private mPduDataStream:Ljava/io/ByteArrayInputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/google_mms/android/mms/pdu/PduParser;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    sput-object v1, Lcom/google_mms/android/mms/pdu/PduParser;->mTypeParam:[B

    sput-object v1, Lcom/google_mms/android/mms/pdu/PduParser;->mStartParam:[B

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mBody:Lcom/google_mms/android/mms/pdu/PduBody;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mForRestore:Z

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    return-void
.end method

.method protected static checkMandatoryHeader(Lcom/google_mms/android/mms/pdu/PduHeaders;)Z
    .locals 8

    const/16 v7, 0x8b

    const/16 v6, 0x85

    const/16 v5, 0x98

    const-wide/16 v3, -0x1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x8c

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    const/16 v2, 0x8d

    invoke-virtual {p0, v2}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v2

    if-nez v2, :cond_1

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: PDU hasn\'t mmsVersion"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    packed-switch v1, :pswitch_data_0

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: Parser doesn\'t support this message type in this version"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const/16 v1, 0x84

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_13

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_SEND_REQ PDU hasn\'t content type field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x92

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_SEND_CONF PDU hasn\'t Response-Status field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v5}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_13

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_SEND_CONF PDU hasn\'t Transaction-Id field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x83

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFICATION_IND PDU hasn\'t Content-Location field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x88

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-nez v1, :cond_4

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFICATION_IND PDU hasn\'t Expiry field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x8a

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFICATION_IND PDU hasn\'t Message-Class field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0x8e

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-nez v1, :cond_6

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFICATION_IND PDU hasn\'t Message-Size field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0, v5}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_13

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFICATION_IND PDU hasn\'t Transaction-Id field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    const/16 v1, 0x95

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFYRESP_IND PDU hasn\'t Status field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0, v5}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_13

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_NOTIFYRESP_IND PDU hasn\'t Transaction-Id field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    const/16 v1, 0x84

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_RETRIEVE_CONF PDU hasn\'t Content-Type field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p0, v6}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-nez v1, :cond_13

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_RETRIEVE_CONF PDU hasn\'t Date field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual {p0, v6}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-nez v1, :cond_9

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_DELIVERY_IND PDU hasn\'t Date field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0, v7}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_a

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_DELIVERY_IND PDU hasn\'t Message-Id field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x95

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_DELIVERY_IND PDU hasn\'t Status field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x97

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    if-nez v1, :cond_13

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_DELIVERY_IND PDU hasn\'t To field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0, v5}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_13

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_ACKNOWLEDGE_IND PDU hasn\'t Transaction-Id field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p0, v6}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v1

    cmp-long v1, v3, v1

    if-nez v1, :cond_c

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_ORIG_IND PDU hasn\'t Date field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0x89

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    if-nez v1, :cond_d

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_ORIG_IND PDU hasn\'t From field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0, v7}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_e

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_ORIG_IND PDU hasn\'t Message-Id field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    const/16 v1, 0x9b

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_ORIG_IND PDU hasn\'t Read-Status field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const/16 v1, 0x97

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    if-nez v1, :cond_13

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_ORIG_IND PDU hasn\'t To field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    const/16 v1, 0x89

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    if-nez v1, :cond_10

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_REC_IND PDU hasn\'t From field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    invoke-virtual {p0, v7}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v1

    if-nez v1, :cond_11

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_REC_IND PDU hasn\'t Message-Id field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    const/16 v1, 0x9b

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_REC_IND PDU hasn\'t Read-Status field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_12
    const/16 v1, 0x97

    invoke-virtual {p0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    if-nez v1, :cond_13

    const-string v1, "PduParser"

    const-string v2, "Parse MandatoryHeader Failed: MESSAGE_TYPE_READ_REC_IND PDU hasn\'t To field"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x1

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method private static checkPartPosition(Lcom/google_mms/android/mms/pdu/PduPart;)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-boolean v2, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/google_mms/android/mms/pdu/PduParser;->mTypeParam:[B

    if-nez v2, :cond_2

    sget-object v2, Lcom/google_mms/android/mms/pdu/PduParser;->mStartParam:[B

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v2, Lcom/google_mms/android/mms/pdu/PduParser;->mStartParam:[B

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v2

    if-eqz v2, :cond_3

    sget-object v3, Lcom/google_mms/android/mms/pdu/PduParser;->mStartParam:[B

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/google_mms/android/mms/pdu/PduParser;->mTypeParam:[B

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    if-eqz v2, :cond_1

    sget-object v3, Lcom/google_mms/android/mms/pdu/PduParser;->mTypeParam:[B

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method protected static extractByteValue(Ljava/io/ByteArrayInputStream;)I
    .locals 2

    sget-boolean v0, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    sget-boolean v1, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method protected static getWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 4

    const/4 v3, -0x1

    sget-boolean v0, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    sget-boolean v2, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-ne v3, v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->isTokenCharacter(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    sget-boolean v2, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_4

    if-ne v3, v0, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3
    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->isText(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_4
    if-eq v3, v0, :cond_5

    if-nez v0, :cond_1

    :cond_5
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected static isText(I)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    const/16 v1, 0x80

    if-lt p0, v1, :cond_2

    const/16 v1, 0xff

    if-gt p0, v1, :cond_2

    :cond_1
    :goto_0
    :pswitch_0
    return v0

    :cond_2
    packed-switch p0, :pswitch_data_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected static isTokenCharacter(I)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x21

    if-lt p0, v1, :cond_0

    const/16 v1, 0x7e

    if-le p0, v1, :cond_1

    :cond_0
    :goto_0
    :sswitch_0
    return v0

    :cond_1
    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PduParser"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected static parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    .locals 8

    const/16 v7, 0x20

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/16 v5, 0x7f

    const/4 v4, 0x0

    sget-boolean v0, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0, v3}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    sget-boolean v1, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-ne v6, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    and-int/lit16 v0, v0, 0xff

    if-ge v0, v7, :cond_8

    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    sget-boolean v3, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    if-ne v6, v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v7, :cond_5

    if-gt v0, v5, :cond_5

    invoke-static {p0, v4}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    if-lez v1, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1, v2}, Lcom/google_mms/android/mms/pdu/PduParser;->parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V

    :cond_3
    if-gez v1, :cond_4

    const-string v0, "PduParser"

    const-string v1, "Corrupt MMS message"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :cond_4
    :goto_1
    return-object v0

    :cond_5
    if-le v0, v5, :cond_7

    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    sget-object v3, Lcom/google_mms/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_6

    sget-object v3, Lcom/google_mms/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    invoke-static {p0, v4}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_0

    :cond_7
    const-string v0, "PduParser"

    const-string v1, "Corrupt content-type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/google_mms/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1

    :cond_8
    if-gt v0, v5, :cond_9

    invoke-static {p0, v4}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    goto :goto_1

    :cond_9
    sget-object v0, Lcom/google_mms/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_1
.end method

.method protected static parseContentTypeParams(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;Ljava/lang/Integer;)V
    .locals 10

    const/16 v9, 0x7f

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/16 v6, 0x81

    const/4 v1, 0x0

    sget-boolean v0, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    if-gtz v0, :cond_3

    if-eqz v0, :cond_2

    const-string v0, "PduParser"

    const-string v1, "Corrupt Content-Type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    sget-boolean v4, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v4, :cond_4

    if-ne v7, v3, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    const-string v3, "PduParser"

    const-string v4, "Not supported Content-Type parameter"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v0}, Lcom/google_mms/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v3

    if-ne v7, v3, :cond_11

    const-string v3, "PduParser"

    const-string v4, "Corrupt Content-Type"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, v8}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    if-le v0, v9, :cond_6

    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    sget-object v3, Lcom/google_mms/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_5

    sget-object v3, Lcom/google_mms/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v3, 0x83

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v0, v2, v0

    sub-int v0, v3, v0

    goto :goto_0

    :cond_6
    invoke-static {p0, v1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    const/16 v3, 0x83

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :pswitch_2
    invoke-static {p0, v1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    const/16 v3, 0x99

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v0, v2, v0

    sub-int v0, v3, v0

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p0, v8}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v3, 0x20

    if-le v0, v3, :cond_8

    if-lt v0, v9, :cond_9

    :cond_8
    if-nez v0, :cond_b

    :cond_9
    invoke-static {p0, v1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/CharacterSets;->getMibEnumValue(Ljava/lang/String;)I

    move-result v0

    const-string v4, "PduParser"

    const-string v5, "Parse CharacterSets: charsetStr"

    invoke-static {v4, v5}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0x81

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v0, v2, v0

    sub-int v0, v3, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v4, "PduParser"

    invoke-static {v3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_b
    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v3

    long-to-int v0, v3

    if-eqz p1, :cond_a

    const-string v3, "PduParser"

    const-string v4, "Parse Well-known-charset: charset"

    invoke-static {v3, v4}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :pswitch_4
    invoke-static {p0, v1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    const/16 v3, 0x97

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v0, v2, v0

    sub-int v0, v3, v0

    goto/16 :goto_0

    :pswitch_5
    invoke-static {p0, v1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    if-eqz v0, :cond_d

    if-eqz p1, :cond_d

    const/16 v3, 0x98

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v0, v2, v0

    sub-int v0, v3, v0

    goto/16 :goto_0

    :pswitch_6
    invoke-static {p0, v1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    if-eqz v0, :cond_e

    if-eqz p1, :cond_e

    const/16 v3, 0x9d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v0, v2, v0

    sub-int v0, v3, v0

    goto/16 :goto_0

    :pswitch_7
    invoke-static {p0, v1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    const/16 v3, 0x9b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v0, v2, v0

    sub-int v0, v3, v0

    goto/16 :goto_0

    :pswitch_8
    invoke-static {p0, v1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    if-eqz v0, :cond_10

    if-eqz p1, :cond_10

    const/16 v3, 0x9c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int v0, v2, v0

    sub-int v0, v3, v0

    goto/16 :goto_0

    :cond_11
    move v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_6
    .end packed-switch
.end method

.method protected static parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google_mms/android/mms/pdu/EncodedStringValue;
    .locals 3

    const/4 v1, 0x0

    sget-boolean v0, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    sget-boolean v2, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    const/4 v2, -0x1

    if-ne v2, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v2, 0x20

    if-ge v0, v2, :cond_3

    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    :goto_0
    invoke-static {p0, v1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v1, Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    invoke-direct {v1, v0, v2}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    new-instance v0, Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    invoke-direct {v0, v2}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected static parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    .locals 2

    sget-boolean v0, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    sget-boolean v1, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    const/16 v1, 0x7f

    if-le v0, v1, :cond_2

    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_2
    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v0

    goto :goto_0
.end method

.method protected static parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    .locals 8

    const/16 v7, 0x8

    const/4 v6, -0x1

    sget-boolean v0, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    sget-boolean v1, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-ne v6, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    and-int/lit16 v3, v0, 0xff

    if-le v3, v7, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Octet count greater than 8 and I can\'t represent that!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_3

    return-wide v1

    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    sget-boolean v5, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    if-ne v6, v4, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    shl-long/2addr v1, v7

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google_mms/android/mms/pdu/PduPart;I)Z
    .locals 10

    const/16 v9, 0x7f

    const/4 v8, -0x1

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v2, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    sget-boolean v2, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v2, :cond_2

    if-gtz p2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v3

    move v2, p2

    :goto_0
    if-gtz v2, :cond_3

    if-eqz v2, :cond_16

    const-string v1, "PduParser"

    const-string v2, "Corrupt Part headers"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return v0

    :cond_3
    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v4

    sget-boolean v5, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v5, :cond_4

    if-ne v8, v4, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_4
    add-int/lit8 v2, v2, -0x1

    if-le v4, v9, :cond_e

    sparse-switch v4, :sswitch_data_0

    const-string v5, "PduParser"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Not supported Part headers: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2}, Lcom/google_mms/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v2

    if-ne v8, v2, :cond_d

    const-string v1, "PduParser"

    const-string v2, "Corrupt Part headers"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :sswitch_0
    invoke-static {p0, v0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p1, v2}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentLocation([B)V

    :cond_5
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    sub-int v2, v3, v2

    sub-int v2, p2, v2

    goto :goto_0

    :sswitch_1
    invoke-static {p0, v1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p1, v2}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentId([B)V

    :cond_6
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    sub-int v2, v3, v2

    sub-int v2, p2, v2

    goto :goto_0

    :sswitch_2
    invoke-static {p0, v0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {p1, v2}, Lcom/google_mms/android/mms/pdu/PduPart;->setXWapContentUri([B)V

    :cond_7
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    sub-int v2, v3, v2

    sub-int v2, p2, v2

    goto :goto_0

    :sswitch_3
    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {p1, v4, v5}, Lcom/google_mms/android/mms/pdu/PduPart;->setDate(J)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    sub-int v2, v3, v2

    sub-int v2, p2, v2

    goto/16 :goto_0

    :sswitch_4
    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    move-result v2

    invoke-virtual {p0, v1}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v4

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    const/16 v6, 0x80

    if-ne v5, v6, :cond_a

    sget-object v5, Lcom/google_mms/android/mms/pdu/PduPart;->DISPOSITION_FROM_DATA:[B

    invoke-virtual {p1, v5}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentDisposition([B)V

    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    sub-int v5, v4, v5

    if-ge v5, v2, :cond_9

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    const/16 v6, 0x98

    if-ne v5, v6, :cond_8

    invoke-static {p0, v0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google_mms/android/mms/pdu/PduPart;->setFilename([B)V

    :cond_8
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v5

    sub-int v6, v4, v5

    if-ge v6, v2, :cond_9

    sub-int/2addr v4, v5

    sub-int/2addr v2, v4

    new-array v4, v2, [B

    invoke-virtual {p0, v4, v0, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    :cond_9
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    sub-int v2, v3, v2

    sub-int v2, p2, v2

    goto/16 :goto_0

    :cond_a
    const/16 v6, 0x81

    if-ne v5, v6, :cond_b

    sget-object v5, Lcom/google_mms/android/mms/pdu/PduPart;->DISPOSITION_ATTACHMENT:[B

    invoke-virtual {p1, v5}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_2

    :cond_b
    const/16 v6, 0x82

    if-ne v5, v6, :cond_c

    sget-object v5, Lcom/google_mms/android/mms/pdu/PduPart;->DISPOSITION_INLINE:[B

    invoke-virtual {p1, v5}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    invoke-static {p0, v0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentDisposition([B)V

    goto :goto_2

    :cond_d
    move v2, v0

    goto/16 :goto_0

    :cond_e
    const/16 v5, 0x20

    if-lt v4, v5, :cond_14

    if-gt v4, v9, :cond_14

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    invoke-static {p0, v0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v2

    invoke-static {p0, v0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "PduParser"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got unknown header field: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PduParser"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Got unknown header tempValue: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Content-Transfer-Encoding"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {p1, v4}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentTransferEncoding([B)V

    :cond_f
    const-string v2, "Content-ID"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    if-eqz v4, :cond_10

    invoke-virtual {p1, v4}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentId([B)V

    :cond_10
    const-string v2, "Content-Location"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    if-eqz v4, :cond_11

    invoke-virtual {p1, v4}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentLocation([B)V

    :cond_11
    const-string v2, "Content-Disposition"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    if-eqz v4, :cond_12

    invoke-virtual {p1, v4}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentDisposition([B)V

    :cond_12
    const-string v2, "Name"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v4, :cond_13

    invoke-virtual {p1, v4}, Lcom/google_mms/android/mms/pdu/PduPart;->setName([B)V

    :cond_13
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    sub-int v2, v3, v2

    sub-int v2, p2, v2

    goto/16 :goto_0

    :cond_14
    const-string v5, "PduParser"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Not supported Part headers: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2}, Lcom/google_mms/android/mms/pdu/PduParser;->skipWapValue(Ljava/io/ByteArrayInputStream;I)I

    move-result v2

    if-ne v8, v2, :cond_15

    const-string v1, "PduParser"

    const-string v2, "Corrupt Part headers"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_15
    move v2, v0

    goto/16 :goto_0

    :cond_16
    move v0, v1

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x8e -> :sswitch_0
        0x92 -> :sswitch_3
        0xae -> :sswitch_4
        0xb0 -> :sswitch_2
        0xc0 -> :sswitch_1
        0xc5 -> :sswitch_4
    .end sparse-switch
.end method

.method protected static parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google_mms/android/mms/pdu/PduBody;
    .locals 11

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-nez p0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v6

    new-instance v3, Lcom/google_mms/android/mms/pdu/PduBody;

    invoke-direct {v3}, Lcom/google_mms/android/mms/pdu/PduBody;-><init>()V

    move v4, v5

    :goto_1
    if-lt v4, v6, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v7

    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    new-instance v1, Lcom/google_mms/android/mms/pdu/PduPart;

    invoke-direct {v1}, Lcom/google_mms/android/mms/pdu/PduPart;-><init>()V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v9

    if-gtz v9, :cond_2

    const-string v0, "PduParser"

    const-string v1, "PduParser: parseParts: Invalid part."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0, v10}, Lcom/google_mms/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, v0}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentType([B)V

    :goto_2
    const/16 v0, 0x97

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Lcom/google_mms/android/mms/pdu/PduPart;->setName([B)V

    :cond_3
    const/16 v0, 0x81

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/google_mms/android/mms/pdu/PduPart;->setCharset(I)V

    :cond_4
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    sub-int v0, v9, v0

    sub-int v0, v7, v0

    if-lez v0, :cond_6

    invoke-static {p0, v1, v0}, Lcom/google_mms/android/mms/pdu/PduParser;->parsePartHeaders(Ljava/io/ByteArrayInputStream;Lcom/google_mms/android/mms/pdu/PduPart;I)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "PduParser"

    const-string v1, "PduParser: parseParts: Parse part header faild."

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/google_mms/android/mms/pdu/PduContentTypes;->contentTypes:[Ljava/lang/String;

    aget-object v0, v0, v5

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentType([B)V

    goto :goto_2

    :cond_6
    if-gez v0, :cond_7

    const-string v0, "PduParser"

    const-string v1, "PduParser: parseParts: Invalid length of content-type"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v1}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Lcom/google_mms/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Lcom/google_mms/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {v1}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "PduParser"

    const-string v7, "PduParser: parseParts: Hasn\'t find ContentLocation,so generate one."

    invoke-static {v0, v7}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentLocation([B)V

    :cond_8
    if-lez v8, :cond_d

    new-array v0, v8, [B

    new-instance v7, Ljava/lang/String;

    invoke-virtual {v1}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0, v5, v8}, Ljava/io/ByteArrayInputStream;->read([BII)I

    const-string v8, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google_mms/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/google_mms/android/mms/pdu/PduBody;->getPart(I)Lcom/google_mms/android/mms/pdu/PduPart;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->checkPartPosition(Lcom/google_mms/android/mms/pdu/PduPart;)I

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v3, v5, v0}, Lcom/google_mms/android/mms/pdu/PduBody;->addPart(ILcom/google_mms/android/mms/pdu/PduPart;)V

    :goto_4
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v1}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentTransferEncoding()[B

    move-result-object v7

    if-eqz v7, :cond_a

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    const-string v7, "base64"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/Base64;->decodeBase64([B)[B

    move-result-object v0

    :cond_a
    :goto_5
    if-nez v0, :cond_c

    const-string v0, "Decode part data error!"

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_b
    const-string v7, "quoted-printable"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/QuotedPrintable;->decodeQuotedPrintable([B)[B

    move-result-object v0

    goto :goto_5

    :cond_c
    invoke-virtual {v1, v0}, Lcom/google_mms/android/mms/pdu/PduPart;->setData([B)V

    :cond_d
    move-object v0, v1

    goto :goto_3

    :cond_e
    invoke-virtual {v3, v0}, Lcom/google_mms/android/mms/pdu/PduBody;->addPart(Lcom/google_mms/android/mms/pdu/PduPart;)Z

    goto :goto_4
.end method

.method protected static parseShortInteger(Ljava/io/ByteArrayInputStream;)I
    .locals 2

    sget-boolean v0, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    sget-boolean v1, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    return v0
.end method

.method protected static parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I
    .locals 4

    const/4 v3, -0x1

    sget-boolean v0, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    if-ne v0, v3, :cond_3

    :cond_1
    :goto_0
    return v0

    :cond_2
    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v1, v0

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    if-eq v0, v3, :cond_1

    :cond_3
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_2

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v0, v0, 0x7f

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method protected static parseValueLength(Ljava/io/ByteArrayInputStream;)I
    .locals 2

    sget-boolean v0, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    sget-boolean v1, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_2

    :goto_0
    return v0

    :cond_2
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_3

    invoke-static {p0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Value length > LENGTH_QUOTE!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static parseWapString(Ljava/io/ByteArrayInputStream;I)[B
    .locals 3

    const/4 v2, 0x1

    sget-boolean v0, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v0

    sget-boolean v1, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    const/4 v1, -0x1

    if-ne v1, v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    if-ne v2, p1, :cond_2

    const/16 v1, 0x22

    if-ne v1, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    :goto_0
    invoke-static {p0, p1}, Lcom/google_mms/android/mms/pdu/PduParser;->getWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    return-object v0

    :cond_2
    if-nez p1, :cond_3

    const/16 v1, 0x7f

    if-ne v1, v0, :cond_3

    invoke-virtual {p0, v2}, Ljava/io/ByteArrayInputStream;->mark(I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->reset()V

    goto :goto_0
.end method

.method protected static skipWapValue(Ljava/io/ByteArrayInputStream;I)I
    .locals 2

    sget-boolean v0, Lcom/google_mms/android/mms/pdu/PduParser;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    new-array v0, p1, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    move-result v0

    if-ge v0, p1, :cond_1

    const/4 v0, -0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public parse()Lcom/google_mms/android/mms/pdu/GenericPdu;
    .locals 8

    const/4 v7, 0x1

    const/16 v6, 0x84

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_1

    const-string v0, "PduParser"

    const-string v1, "Input parse stream is null"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/PduParser;->parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google_mms/android/mms/pdu/PduHeaders;

    move-result-object v0

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    if-nez v0, :cond_2

    const-string v0, "PduParser"

    const-string v1, "Parse PduHeader Failed"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v3, 0x8c

    invoke-virtual {v0, v3}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-static {v3}, Lcom/google_mms/android/mms/pdu/PduParser;->checkMandatoryHeader(Lcom/google_mms/android/mms/pdu/PduHeaders;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v0, "check mandatory headers failed!"

    const-string v1, "PduParser"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-static {v3}, Lcom/google_mms/android/mms/pdu/PduParser;->parseUnsignedInt(Ljava/io/ByteArrayInputStream;)I

    move-result v3

    iget-object v4, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayInputStream;->reset()V

    if-ne v6, v0, :cond_6

    const/16 v4, 0x20

    if-lt v3, v4, :cond_6

    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-virtual {v3, v6}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v3

    if-nez v3, :cond_4

    const-string v0, "PduParser"

    const-string v1, "Parse MESSAGE_TYPE_RETRIEVE_CONF Failed: content Type is null _0"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "application/vnd.wap.multipart.related"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "text/plain"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v0, "PduParser"

    const-string v4, "Content Type is text/plain"

    invoke-static {v0, v4}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/google_mms/android/mms/pdu/PduPart;

    invoke-direct {v4}, Lcom/google_mms/android/mms/pdu/PduPart;-><init>()V

    invoke-virtual {v4, v3}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentType([B)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toOctalString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentLocation([B)V

    const-string v0, "<part1>"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/google_mms/android/mms/pdu/PduPart;->setContentId([B)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayInputStream;->mark(I)V

    move v0, v1

    :goto_1
    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_5

    new-array v3, v0, [B

    const-string v5, "PduParser"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "got part length: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayInputStream;->reset()V

    iget-object v5, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5, v3, v1, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    const-string v1, "PduParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "show data: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/google_mms/android/mms/pdu/PduPart;->setData([B)V

    const-string v0, "PduParser"

    const-string v1, "setData finish"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google_mms/android/mms/pdu/PduBody;

    invoke-direct {v1}, Lcom/google_mms/android/mms/pdu/PduBody;-><init>()V

    invoke-virtual {v1, v4}, Lcom/google_mms/android/mms/pdu/PduBody;->addPart(Lcom/google_mms/android/mms/pdu/PduPart;)Z

    :try_start_0
    new-instance v0, Lcom/google_mms/android/mms/pdu/RetrieveConf;

    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v3, v1}, Lcom/google_mms/android/mms/pdu/RetrieveConf;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;Lcom/google_mms/android/mms/pdu/PduBody;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    if-nez v0, :cond_0

    const-string v1, "PduParser"

    const-string v2, "retrieveConf is null"

    invoke-static {v1, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "PduParser"

    const-string v1, "new RetrieveConf has exception"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_2

    :cond_6
    const/16 v3, 0x80

    if-eq v3, v0, :cond_7

    if-ne v6, v0, :cond_8

    :cond_7
    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mPduDataStream:Ljava/io/ByteArrayInputStream;

    invoke-static {v3}, Lcom/google_mms/android/mms/pdu/PduParser;->parseParts(Ljava/io/ByteArrayInputStream;)Lcom/google_mms/android/mms/pdu/PduBody;

    move-result-object v3

    iput-object v3, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mBody:Lcom/google_mms/android/mms/pdu/PduBody;

    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mBody:Lcom/google_mms/android/mms/pdu/PduBody;

    if-nez v3, :cond_8

    const-string v0, "PduParser"

    const-string v1, "Parse parts Failed"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_8
    packed-switch v0, :pswitch_data_0

    const-string v0, "Parser doesn\'t support this message type in this version!"

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Lcom/google_mms/android/mms/pdu/SendReq;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mBody:Lcom/google_mms/android/mms/pdu/PduBody;

    invoke-direct {v0, v1, v2}, Lcom/google_mms/android/mms/pdu/SendReq;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;Lcom/google_mms/android/mms/pdu/PduBody;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Lcom/google_mms/android/mms/pdu/SendConf;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/google_mms/android/mms/pdu/SendConf;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Lcom/google_mms/android/mms/pdu/NotificationInd;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/google_mms/android/mms/pdu/NotificationInd;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Lcom/google_mms/android/mms/pdu/NotifyRespInd;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/google_mms/android/mms/pdu/NotifyRespInd;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v0, Lcom/google_mms/android/mms/pdu/RetrieveConf;

    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    iget-object v4, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mBody:Lcom/google_mms/android/mms/pdu/PduBody;

    invoke-direct {v0, v3, v4}, Lcom/google_mms/android/mms/pdu/RetrieveConf;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;Lcom/google_mms/android/mms/pdu/PduBody;)V

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/RetrieveConf;->getContentType()[B

    move-result-object v3

    if-nez v3, :cond_9

    const-string v0, "PduParser"

    const-string v1, "Parse MESSAGE_TYPE_RETRIEVE_CONF Failed: content Type is null _1"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_9
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/vnd.wap.multipart.mixed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "application/vnd.wap.multipart.related"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "application/vnd.wap.multipart.alternative"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v2, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mBody:Lcom/google_mms/android/mms/pdu/PduBody;

    invoke-virtual {v2, v1}, Lcom/google_mms/android/mms/pdu/PduBody;->getPart(I)Lcom/google_mms/android/mms/pdu/PduPart;

    move-result-object v2

    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mBody:Lcom/google_mms/android/mms/pdu/PduBody;

    invoke-virtual {v3}, Lcom/google_mms/android/mms/pdu/PduBody;->removeAll()V

    iget-object v3, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mBody:Lcom/google_mms/android/mms/pdu/PduBody;

    invoke-virtual {v3, v1, v2}, Lcom/google_mms/android/mms/pdu/PduBody;->addPart(ILcom/google_mms/android/mms/pdu/PduPart;)V

    goto/16 :goto_0

    :cond_a
    const-string v0, "PduParser"

    const-string v1, "Parse MESSAGE_TYPE_RETRIEVE_CONF Failed: content Type is null _2"

    invoke-static {v0, v1}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Lcom/google_mms/android/mms/pdu/DeliveryInd;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/google_mms/android/mms/pdu/DeliveryInd;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Lcom/google_mms/android/mms/pdu/AcknowledgeInd;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/google_mms/android/mms/pdu/AcknowledgeInd;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;)V

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Lcom/google_mms/android/mms/pdu/ReadOrigInd;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/google_mms/android/mms/pdu/ReadOrigInd;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;)V

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lcom/google_mms/android/mms/pdu/ReadRecInd;

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-direct {v0, v1}, Lcom/google_mms/android/mms/pdu/ReadRecInd;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public parse(Z)Lcom/google_mms/android/mms/pdu/GenericPdu;
    .locals 1

    iput-boolean p1, p0, Lcom/google_mms/android/mms/pdu/PduParser;->mForRestore:Z

    invoke-virtual {p0}, Lcom/google_mms/android/mms/pdu/PduParser;->parse()Lcom/google_mms/android/mms/pdu/GenericPdu;

    move-result-object v0

    return-object v0
.end method

.method protected parseHeaders(Ljava/io/ByteArrayInputStream;)Lcom/google_mms/android/mms/pdu/PduHeaders;
    .locals 14

    const/16 v13, 0x80

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Lcom/google_mms/android/mms/pdu/PduHeaders;

    invoke-direct {v2}, Lcom/google_mms/android/mms/pdu/PduHeaders;-><init>()V

    move v5, v6

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    move-object v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v8

    const/16 v0, 0x20

    if-lt v8, v0, :cond_4

    const/16 v0, 0x7f

    if-gt v8, v0, :cond_4

    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    invoke-static {p1, v7}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    const-string v3, "PduParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "TextHeader: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    packed-switch v8, :pswitch_data_0

    :pswitch_0
    const-string v0, "Unknown header"

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    :try_start_0
    invoke-virtual {v2, v0, v8}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_0
    .catch Lcom/google_mms/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set invalid Octet value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " into the header filed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_2
    const-string v0, "PduParser"

    const-string v2, "PduParser: parseHeaders: We don\'t support these kind of messages now."

    invoke-static {v0, v2}, Lcom/vivo/PCTools/util/b;->logI(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "is not Octet header field!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_3
    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    :try_start_1
    invoke-virtual {v2, v0, v8}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_1
    .catch Lcom/google_mms/android/mms/InvalidHeaderValueException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_1

    :catch_2
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set invalid Octet value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " into the header filed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :catch_3
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "is not Octet header field!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_4
    :try_start_2
    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v3

    const/16 v0, 0x85

    if-ne v8, v0, :cond_5

    const-wide/16 v9, 0x3e8

    mul-long/2addr v9, v3

    const v0, 0xff00

    invoke-virtual {v2, v9, v10, v0}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    invoke-virtual {v2, v3, v4, v8}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "is not Long-Integer header field!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    :try_start_3
    invoke-virtual {v2, v3, v4, v8}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_1

    :pswitch_5
    :try_start_4
    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, v8}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_1

    :catch_5
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "is not Long-Integer header field!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_6
    invoke-static {p1, v7}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v2, v0, v8}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_1

    :catch_6
    move-exception v0

    const-string v0, "null pointer error!"

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_7
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "is not Text-String header field!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_7
    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_6
    invoke-virtual {v2, v0, v8}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google_mms/android/mms/pdu/EncodedStringValue;I)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_9

    goto/16 :goto_1

    :catch_8
    move-exception v0

    const-string v0, "null pointer error!"

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_9
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "is not Encoded-String-Value header field!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_8
    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    if-eqz v4, :cond_7

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "/"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_6

    invoke-virtual {v0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_6
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_b

    :cond_7
    :try_start_8
    invoke-virtual {v2, v3, v8}, Lcom/google_mms/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google_mms/android/mms/pdu/EncodedStringValue;I)V
    :try_end_8
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_c

    goto/16 :goto_1

    :catch_a
    move-exception v0

    const-string v0, "null pointer error!"

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_b
    move-exception v0

    const-string v0, "null pointer error!"

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :catch_c
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "is not Encoded-String-Value header field!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_9
    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    :try_start_9
    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_e

    move-result-wide v3

    const/16 v9, 0x81

    if-ne v9, v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    add-long/2addr v3, v9

    :cond_8
    :try_start_a
    invoke-virtual {v2, v3, v4, v8}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_d

    goto/16 :goto_1

    :catch_d
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "is not Long-Integer header field!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :catch_e
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "is not Long-Integer header field!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_a
    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    if-ne v13, v0, :cond_b

    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->getTextString()[B

    move-result-object v4

    if-eqz v4, :cond_a

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_9

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_9
    :try_start_b
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;->setTextString([B)V
    :try_end_b
    .catch Ljava/lang/NullPointerException; {:try_start_b .. :try_end_b} :catch_10

    :cond_a
    :goto_2
    const/16 v3, 0x89

    :try_start_c
    invoke-virtual {v2, v0, v3}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google_mms/android/mms/pdu/EncodedStringValue;I)V
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_f
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_12

    goto/16 :goto_1

    :catch_f
    move-exception v0

    const-string v0, "null pointer error!"

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_10
    move-exception v0

    const-string v0, "null pointer error!"

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_b
    :try_start_d
    new-instance v0, Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    const-string v3, "insert-address-token"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/google_mms/android/mms/pdu/EncodedStringValue;-><init>([B)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_11

    goto :goto_2

    :catch_11
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "is not Encoded-String-Value header field!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :catch_12
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "is not Encoded-String-Value header field!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_b
    invoke-virtual {p1, v6}, Ljava/io/ByteArrayInputStream;->mark(I)V

    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    if-lt v0, v13, :cond_f

    if-ne v13, v0, :cond_c

    :try_start_e
    const-string v0, "personal"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v3, 0x8a

    invoke-virtual {v2, v0, v3}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_e
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_14

    goto/16 :goto_1

    :catch_13
    move-exception v0

    const-string v0, "null pointer error!"

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_c
    const/16 v3, 0x81

    if-ne v3, v0, :cond_d

    :try_start_f
    const-string v0, "advertisement"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v3, 0x8a

    invoke-virtual {v2, v0, v3}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_14

    goto/16 :goto_1

    :catch_14
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "is not Text-String header field!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0x82

    if-ne v3, v0, :cond_e

    :try_start_10
    const-string v0, "informational"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v3, 0x8a

    invoke-virtual {v2, v0, v3}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setTextString([BI)V

    goto/16 :goto_1

    :cond_e
    const/16 v3, 0x83

    if-ne v3, v0, :cond_1

    const-string v0, "auto"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v3, 0x8a

    invoke-virtual {v2, v0, v3}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_10
    .catch Ljava/lang/NullPointerException; {:try_start_10 .. :try_end_10} :catch_13
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_14

    goto/16 :goto_1

    :cond_f
    invoke-virtual {p1}, Ljava/io/ByteArrayInputStream;->reset()V

    invoke-static {p1, v7}, Lcom/google_mms/android/mms/pdu/PduParser;->parseWapString(Ljava/io/ByteArrayInputStream;I)[B

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v3, 0x8a

    :try_start_11
    invoke-virtual {v2, v0, v3}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_16

    goto/16 :goto_1

    :catch_15
    move-exception v0

    const-string v0, "null pointer error!"

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_16
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "is not Text-String header field!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_c
    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseShortInteger(Ljava/io/ByteArrayInputStream;)I

    move-result v0

    const/16 v3, 0x8d

    :try_start_12
    invoke-virtual {v2, v0, v3}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setOctet(II)V
    :try_end_12
    .catch Lcom/google_mms/android/mms/InvalidHeaderValueException; {:try_start_12 .. :try_end_12} :catch_17
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_18

    goto/16 :goto_1

    :catch_17
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Set invalid Octet value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " into the header filed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :catch_18
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "is not Octet header field!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_d
    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    :try_start_13
    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_1a

    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v3, 0xa0

    :try_start_14
    invoke-virtual {v2, v0, v3}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google_mms/android/mms/pdu/EncodedStringValue;I)V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_19
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1b

    goto/16 :goto_1

    :catch_19
    move-exception v0

    const-string v0, "null pointer error!"

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_1a
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is not Integer-Value"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :catch_1b
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "is not Encoded-String-Value header field!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_e
    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    :try_start_15
    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_15 .. :try_end_15} :catch_1d

    :try_start_16
    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseLongInteger(Ljava/io/ByteArrayInputStream;)J

    move-result-wide v3

    const/16 v0, 0xa1

    invoke-virtual {v2, v3, v4, v0}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setLongInteger(JI)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_1c

    goto/16 :goto_1

    :catch_1c
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "is not Long-Integer header field!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :catch_1d
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is not Integer-Value"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_f
    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseEncodedStringValue(Ljava/io/ByteArrayInputStream;)Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    goto/16 :goto_1

    :pswitch_10
    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseValueLength(Ljava/io/ByteArrayInputStream;)I

    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->extractByteValue(Ljava/io/ByteArrayInputStream;)I

    :try_start_17
    invoke-static {p1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseIntegerValue(Ljava/io/ByteArrayInputStream;)J
    :try_end_17
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_1e

    goto/16 :goto_1

    :catch_1e
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is not Integer-Value"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_11
    invoke-static {p1, v1}, Lcom/google_mms/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    goto/16 :goto_1

    :pswitch_12
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, v3}, Lcom/google_mms/android/mms/pdu/PduParser;->parseContentType(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B

    move-result-object v0

    if-eqz v0, :cond_10

    const/16 v4, 0x84

    :try_start_18
    invoke-virtual {v2, v0, v4}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setTextString([BI)V
    :try_end_18
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_18} :catch_1f
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_20

    :cond_10
    :goto_3
    const/16 v0, 0x99

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduParser;->mStartParam:[B

    const/16 v0, 0x83

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    sput-object v0, Lcom/google_mms/android/mms/pdu/PduParser;->mTypeParam:[B

    move v5, v7

    goto/16 :goto_1

    :catch_1f
    move-exception v0

    const-string v0, "null pointer error!"

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    goto :goto_3

    :catch_20
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "is not Text-String header field!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google_mms/android/mms/pdu/PduParser;->log(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_12
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_1
        :pswitch_c
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_3
        :pswitch_9
        :pswitch_6
        :pswitch_4
        :pswitch_d
        :pswitch_e
        :pswitch_3
        :pswitch_3
        :pswitch_f
        :pswitch_3
        :pswitch_7
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_5
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_11
        :pswitch_5
        :pswitch_3
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_6
        :pswitch_6
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x89
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
