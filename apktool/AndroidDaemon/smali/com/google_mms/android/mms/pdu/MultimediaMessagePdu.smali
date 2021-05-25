.class public Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;
.super Lcom/google_mms/android/mms/pdu/GenericPdu;


# instance fields
.field private mMessageBody:Lcom/google_mms/android/mms/pdu/PduBody;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google_mms/android/mms/pdu/GenericPdu;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google_mms/android/mms/pdu/PduHeaders;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google_mms/android/mms/pdu/GenericPdu;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;)V

    return-void
.end method

.method public constructor <init>(Lcom/google_mms/android/mms/pdu/PduHeaders;Lcom/google_mms/android/mms/pdu/PduBody;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google_mms/android/mms/pdu/GenericPdu;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;)V

    iput-object p2, p0, Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;->mMessageBody:Lcom/google_mms/android/mms/pdu/PduBody;

    return-void
.end method


# virtual methods
.method public addTo(Lcom/google_mms/android/mms/pdu/EncodedStringValue;)V
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->appendEncodedStringValue(Lcom/google_mms/android/mms/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public getBody()Lcom/google_mms/android/mms/pdu/PduBody;
    .locals 1

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;->mMessageBody:Lcom/google_mms/android/mms/pdu/PduBody;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPriority()I
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getSubject()Lcom/google_mms/android/mms/pdu/EncodedStringValue;
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const v1, 0xff00

    invoke-virtual {v0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTo()[Lcom/google_mms/android/mms/pdu/EncodedStringValue;
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Lcom/google_mms/android/mms/pdu/PduBody;)V
    .locals 0

    iput-object p1, p0, Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;->mMessageBody:Lcom/google_mms/android/mms/pdu/PduBody;

    return-void
.end method

.method public setDate(J)V
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    return-void
.end method

.method public setPriority(I)V
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8f

    invoke-virtual {v0, p1, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setOctet(II)V

    return-void
.end method

.method public setSubject(Lcom/google_mms/android/mms/pdu/EncodedStringValue;)V
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v1, 0x96

    invoke-virtual {v0, p1, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google_mms/android/mms/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public setTime(J)V
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/MultimediaMessagePdu;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const v1, 0xff00

    invoke-virtual {v0, p1, p2, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    return-void
.end method
