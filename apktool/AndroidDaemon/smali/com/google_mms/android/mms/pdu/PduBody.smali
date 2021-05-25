.class public Lcom/google_mms/android/mms/pdu/PduBody;
.super Ljava/lang/Object;


# instance fields
.field private mPartMapByContentId:Ljava/util/Map;

.field private mPartMapByContentLocation:Ljava/util/Map;

.field private mPartMapByFileName:Ljava/util/Map;

.field private mPartMapByName:Ljava/util/Map;

.field private mParts:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    return-void
.end method

.method private putPartToMaps(Lcom/google_mms/android/mms/pdu/PduPart;)V
    .locals 3

    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getName()[B

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Lcom/google_mms/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method


# virtual methods
.method public addPart(ILcom/google_mms/android/mms/pdu/PduPart;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p2}, Lcom/google_mms/android/mms/pdu/PduBody;->putPartToMaps(Lcom/google_mms/android/mms/pdu/PduPart;)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addPart(Lcom/google_mms/android/mms/pdu/PduPart;)Z
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google_mms/android/mms/pdu/PduBody;->putPartToMaps(Lcom/google_mms/android/mms/pdu/PduPart;)V

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getPart(I)Lcom/google_mms/android/mms/pdu/PduPart;
    .locals 1

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google_mms/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getPartByContentId(Ljava/lang/String;)Lcom/google_mms/android/mms/pdu/PduPart;
    .locals 1

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mPartMapByContentId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google_mms/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getPartByContentLocation(Ljava/lang/String;)Lcom/google_mms/android/mms/pdu/PduPart;
    .locals 1

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mPartMapByContentLocation:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google_mms/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getPartByFileName(Ljava/lang/String;)Lcom/google_mms/android/mms/pdu/PduPart;
    .locals 1

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mPartMapByFileName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google_mms/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getPartByName(Ljava/lang/String;)Lcom/google_mms/android/mms/pdu/PduPart;
    .locals 1

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mPartMapByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google_mms/android/mms/pdu/PduPart;

    return-object v0
.end method

.method public getPartIndex(Lcom/google_mms/android/mms/pdu/PduPart;)I
    .locals 1

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getPartsNum()I
    .locals 1

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public removeAll()V
    .locals 1

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public removePart(I)Lcom/google_mms/android/mms/pdu/PduPart;
    .locals 1

    iget-object v0, p0, Lcom/google_mms/android/mms/pdu/PduBody;->mParts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google_mms/android/mms/pdu/PduPart;

    return-object v0
.end method
