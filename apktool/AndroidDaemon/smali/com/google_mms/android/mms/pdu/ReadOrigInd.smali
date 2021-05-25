.class public Lcom/google_mms/android/mms/pdu/ReadOrigInd;
.super Lcom/google_mms/android/mms/pdu/GenericPdu;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google_mms/android/mms/pdu/GenericPdu;-><init>()V

    const/16 v0, 0x88

    invoke-virtual {p0, v0}, Lcom/google_mms/android/mms/pdu/ReadOrigInd;->setMessageType(I)V

    return-void
.end method

.method constructor <init>(Lcom/google_mms/android/mms/pdu/PduHeaders;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google_mms/android/mms/pdu/GenericPdu;-><init>(Lcom/google_mms/android/mms/pdu/PduHeaders;)V

    return-void
.end method


# virtual methods
.method public getDate()J
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getLongInteger(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrom()Lcom/google_mms/android/mms/pdu/EncodedStringValue;
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getEncodedStringValue(I)Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public getMessageId()[B
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getReadStatus()I
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTo()[Lcom/google_mms/android/mms/pdu/EncodedStringValue;
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->getEncodedStringValues(I)[Lcom/google_mms/android/mms/pdu/EncodedStringValue;

    move-result-object v0

    return-object v0
.end method

.method public setDate(J)V
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v1, 0x85

    invoke-virtual {v0, p1, p2, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setLongInteger(JI)V

    return-void
.end method

.method public setFrom(Lcom/google_mms/android/mms/pdu/EncodedStringValue;)V
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v1, 0x89

    invoke-virtual {v0, p1, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setEncodedStringValue(Lcom/google_mms/android/mms/pdu/EncodedStringValue;I)V

    return-void
.end method

.method public setMessageId([B)V
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v1, 0x8b

    invoke-virtual {v0, p1, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setTextString([BI)V

    return-void
.end method

.method public setReadStatus(I)V
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v1, 0x9b

    invoke-virtual {v0, p1, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setOctet(II)V

    return-void
.end method

.method public setTo([Lcom/google_mms/android/mms/pdu/EncodedStringValue;)V
    .locals 2

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/ReadOrigInd;->mPduHeaders:Lcom/google_mms/android/mms/pdu/PduHeaders;

    const/16 v1, 0x97

    invoke-virtual {v0, p1, v1}, Lcom/google_mms/android/mms/pdu/PduHeaders;->setEncodedStringValues([Lcom/google_mms/android/mms/pdu/EncodedStringValue;I)V

    return-void
.end method
