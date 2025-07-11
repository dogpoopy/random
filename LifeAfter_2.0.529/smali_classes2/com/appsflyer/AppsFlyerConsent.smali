.class public final Lcom/appsflyer/AppsFlyerConsent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/AppsFlyerConsent$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0086\u0008\u0018\u0000 !2\u00020\u0001:\u0001!B%\u0008\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u00c7\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0006J2\u0010\u000b\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00022\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00022\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0002H\u00c7\u0001\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u001a\u0010\r\u001a\u00020\u00022\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fH\u00d6\u0001\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0010\u0010\u0013\u001a\u00020\u0012H\u00d7\u0001\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0018\u001a\u0004\u0018\u00010\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0017\u0010\u0006R\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0016\u001a\u0004\u0008\u001a\u0010\u0006R\u001a\u0010\u001e\u001a\u00020\u00028\u0007X\u0087\u0004\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u0004"
    }
    d2 = {
        "Lcom/appsflyer/AppsFlyerConsent;",
        "",
        "",
        "component1",
        "()Z",
        "component2",
        "()Ljava/lang/Boolean;",
        "component3",
        "p0",
        "p1",
        "p2",
        "copy",
        "(ZLjava/lang/Boolean;Ljava/lang/Boolean;)Lcom/appsflyer/AppsFlyerConsent;",
        "equals",
        "(Ljava/lang/Object;)Z",
        "",
        "hashCode",
        "()I",
        "",
        "toString",
        "()Ljava/lang/String;",
        "AFInAppEventParameterName",
        "Ljava/lang/Boolean;",
        "getHasConsentForAdsPersonalization",
        "hasConsentForAdsPersonalization",
        "valueOf",
        "getHasConsentForDataUsage",
        "hasConsentForDataUsage",
        "AFKeystoreWrapper",
        "Z",
        "isUserSubjectToGDPR",
        "<init>",
        "(ZLjava/lang/Boolean;Ljava/lang/Boolean;)V",
        "Companion"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/appsflyer/AppsFlyerConsent$Companion;


# instance fields
.field private final AFInAppEventParameterName:Ljava/lang/Boolean;

.field private final AFKeystoreWrapper:Z

.field private final valueOf:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/appsflyer/AppsFlyerConsent$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appsflyer/AppsFlyerConsent$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appsflyer/AppsFlyerConsent;->Companion:Lcom/appsflyer/AppsFlyerConsent$Companion;

    return-void
.end method

.method private constructor <init>(ZLjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lcom/appsflyer/AppsFlyerConsent;->AFKeystoreWrapper:Z

    .line 26
    iput-object p2, p0, Lcom/appsflyer/AppsFlyerConsent;->valueOf:Ljava/lang/Boolean;

    .line 27
    iput-object p3, p0, Lcom/appsflyer/AppsFlyerConsent;->AFInAppEventParameterName:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(ZLjava/lang/Boolean;Ljava/lang/Boolean;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerConsent;-><init>(ZLjava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/appsflyer/AppsFlyerConsent;ZLjava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/appsflyer/AppsFlyerConsent;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lcom/appsflyer/AppsFlyerConsent;->AFKeystoreWrapper:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/appsflyer/AppsFlyerConsent;->valueOf:Ljava/lang/Boolean;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/appsflyer/AppsFlyerConsent;->AFInAppEventParameterName:Ljava/lang/Boolean;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerConsent;->copy(ZLjava/lang/Boolean;Ljava/lang/Boolean;)Lcom/appsflyer/AppsFlyerConsent;

    move-result-object p0

    return-object p0
.end method

.method public static final forGDPRUser(ZZ)Lcom/appsflyer/AppsFlyerConsent;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appsflyer/AppsFlyerConsent;->Companion:Lcom/appsflyer/AppsFlyerConsent$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/appsflyer/AppsFlyerConsent$Companion;->forGDPRUser(ZZ)Lcom/appsflyer/AppsFlyerConsent;

    move-result-object p0

    return-object p0
.end method

.method public static final forNonGDPRUser()Lcom/appsflyer/AppsFlyerConsent;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/appsflyer/AppsFlyerConsent;->Companion:Lcom/appsflyer/AppsFlyerConsent$Companion;

    invoke-virtual {v0}, Lcom/appsflyer/AppsFlyerConsent$Companion;->forNonGDPRUser()Lcom/appsflyer/AppsFlyerConsent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/appsflyer/AppsFlyerConsent;->AFKeystoreWrapper:Z

    return v0
.end method

.method public final component2()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerConsent;->valueOf:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component3()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/appsflyer/AppsFlyerConsent;->AFInAppEventParameterName:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(ZLjava/lang/Boolean;Ljava/lang/Boolean;)Lcom/appsflyer/AppsFlyerConsent;
    .locals 1

    new-instance v0, Lcom/appsflyer/AppsFlyerConsent;

    invoke-direct {v0, p1, p2, p3}, Lcom/appsflyer/AppsFlyerConsent;-><init>(ZLjava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/appsflyer/AppsFlyerConsent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/appsflyer/AppsFlyerConsent;

    iget-boolean v1, p0, Lcom/appsflyer/AppsFlyerConsent;->AFKeystoreWrapper:Z

    iget-boolean v3, p1, Lcom/appsflyer/AppsFlyerConsent;->AFKeystoreWrapper:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerConsent;->valueOf:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/appsflyer/AppsFlyerConsent;->valueOf:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerConsent;->AFInAppEventParameterName:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/appsflyer/AppsFlyerConsent;->AFInAppEventParameterName:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getHasConsentForAdsPersonalization()Ljava/lang/Boolean;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerConsent;->AFInAppEventParameterName:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getHasConsentForDataUsage()Ljava/lang/Boolean;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerConsent;->valueOf:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/appsflyer/AppsFlyerConsent;->AFKeystoreWrapper:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerConsent;->valueOf:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerConsent;->AFInAppEventParameterName:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final isUserSubjectToGDPR()Z
    .locals 1

    .line 25
    iget-boolean v0, p0, Lcom/appsflyer/AppsFlyerConsent;->AFKeystoreWrapper:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppsFlyerConsent(isUserSubjectToGDPR="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/appsflyer/AppsFlyerConsent;->AFKeystoreWrapper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasConsentForDataUsage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerConsent;->valueOf:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasConsentForAdsPersonalization="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/appsflyer/AppsFlyerConsent;->AFInAppEventParameterName:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
