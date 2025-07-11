.class public final Lcom/appsflyer/internal/AFg1vSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field final AFInAppEventParameterName:I

.field final AFInAppEventType:I

.field final AFKeystoreWrapper:I

.field final valueOf:Ljava/lang/String;

.field final values:I


# direct methods
.method public constructor <init>(IIIILjava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/appsflyer/internal/AFg1vSDK;->AFKeystoreWrapper:I

    .line 5
    iput p2, p0, Lcom/appsflyer/internal/AFg1vSDK;->AFInAppEventParameterName:I

    .line 6
    iput p3, p0, Lcom/appsflyer/internal/AFg1vSDK;->AFInAppEventType:I

    .line 7
    iput p4, p0, Lcom/appsflyer/internal/AFg1vSDK;->values:I

    .line 8
    iput-object p5, p0, Lcom/appsflyer/internal/AFg1vSDK;->valueOf:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/appsflyer/internal/AFg1vSDK;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/appsflyer/internal/AFg1vSDK;

    iget v1, p0, Lcom/appsflyer/internal/AFg1vSDK;->AFKeystoreWrapper:I

    iget v3, p1, Lcom/appsflyer/internal/AFg1vSDK;->AFKeystoreWrapper:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/appsflyer/internal/AFg1vSDK;->AFInAppEventParameterName:I

    iget v3, p1, Lcom/appsflyer/internal/AFg1vSDK;->AFInAppEventParameterName:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/appsflyer/internal/AFg1vSDK;->AFInAppEventType:I

    iget v3, p1, Lcom/appsflyer/internal/AFg1vSDK;->AFInAppEventType:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/appsflyer/internal/AFg1vSDK;->values:I

    iget v3, p1, Lcom/appsflyer/internal/AFg1vSDK;->values:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1vSDK;->valueOf:Ljava/lang/String;

    iget-object p1, p1, Lcom/appsflyer/internal/AFg1vSDK;->valueOf:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lcom/appsflyer/internal/AFg1vSDK;->AFKeystoreWrapper:I

    invoke-static {v0}, L$r8$java8methods$utility$Integer$hashCode$II;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/appsflyer/internal/AFg1vSDK;->AFInAppEventParameterName:I

    invoke-static {v1}, L$r8$java8methods$utility$Integer$hashCode$II;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/appsflyer/internal/AFg1vSDK;->AFInAppEventType:I

    invoke-static {v1}, L$r8$java8methods$utility$Integer$hashCode$II;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/appsflyer/internal/AFg1vSDK;->values:I

    invoke-static {v1}, L$r8$java8methods$utility$Integer$hashCode$II;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1vSDK;->valueOf:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CmpTcfData(policyVersion="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/appsflyer/internal/AFg1vSDK;->AFKeystoreWrapper:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", gdprApplies="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/appsflyer/internal/AFg1vSDK;->AFInAppEventParameterName:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cmpSdkId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/appsflyer/internal/AFg1vSDK;->AFInAppEventType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cmpSdkVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/appsflyer/internal/AFg1vSDK;->values:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tcString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsflyer/internal/AFg1vSDK;->valueOf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
