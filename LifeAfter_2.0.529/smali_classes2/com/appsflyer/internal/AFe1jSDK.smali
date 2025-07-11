.class public final Lcom/appsflyer/internal/AFe1jSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFe1jSDK$AFa1zSDK;,
        Lcom/appsflyer/internal/AFe1jSDK$AFa1tSDK;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u0000 \u00162\u00020\u0001:\u0001\u0016B\u0017\u0012\u0006\u0010\u0012\u001a\u00020\t\u0012\u0006\u0010\u0013\u001a\u00020\u000f\u00a2\u0006\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u0005\u001a\u00020\u0002X\u0083\u0080\u0002\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0013\u0010\u0006\u001a\u00020\u0002X\u0083\u0080\u0002\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0004R\u0011\u0010\u0008\u001a\u00020\u00028G\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0007R\u0014\u0010\u000c\u001a\u00020\t8\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0014\u0010\n\u001a\u00020\r8CX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000eR\u0014\u0010\u0003\u001a\u00020\u000f8\u0002X\u0083\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0010R\u0011\u0010\u0011\u001a\u00020\u00028G\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\u0007"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFe1jSDK;",
        "",
        "",
        "registerClient",
        "Lkotlin/Lazy;",
        "valueOf",
        "AFInAppEventParameterName",
        "()Ljava/lang/String;",
        "AFKeystoreWrapper",
        "Lcom/appsflyer/internal/AFd1rSDK;",
        "values",
        "Lcom/appsflyer/internal/AFd1rSDK;",
        "AFInAppEventType",
        "",
        "()Z",
        "Lcom/appsflyer/internal/AFd1xSDK;",
        "Lcom/appsflyer/internal/AFd1xSDK;",
        "AFLogger",
        "p0",
        "p1",
        "<init>",
        "(Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/internal/AFd1xSDK;)V",
        "AFa1zSDK"
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
.field public static AFInAppEventParameterName:Ljava/lang/String;

.field public static AFKeystoreWrapper:Ljava/lang/String;

.field private static AFLogger:Lcom/appsflyer/internal/AFe1gSDK;

.field public static final AFa1zSDK:Lcom/appsflyer/internal/AFe1jSDK$AFa1zSDK;

.field private static final unregisterClient:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final AFInAppEventType:Lcom/appsflyer/internal/AFd1xSDK;

.field private final registerClient:Lkotlin/Lazy;

.field public final valueOf:Lkotlin/Lazy;

.field private final values:Lcom/appsflyer/internal/AFd1rSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/appsflyer/internal/AFe1jSDK$AFa1zSDK;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFe1jSDK$AFa1zSDK;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/appsflyer/internal/AFe1jSDK;->AFa1zSDK:Lcom/appsflyer/internal/AFe1jSDK$AFa1zSDK;

    const-string v0, "https://%scdn-%ssettings.%s/android/v1/%s/settings"

    .line 26
    sput-object v0, Lcom/appsflyer/internal/AFe1jSDK;->AFKeystoreWrapper:Ljava/lang/String;

    const-string v0, "https://%scdn-%stestsettings.%s/android/v1/%s/settings"

    .line 29
    sput-object v0, Lcom/appsflyer/internal/AFe1jSDK;->AFInAppEventParameterName:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "googleplay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "playstore"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "googleplaystore"

    aput-object v2, v0, v1

    .line 32
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/appsflyer/internal/AFe1jSDK;->unregisterClient:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/appsflyer/internal/AFd1rSDK;Lcom/appsflyer/internal/AFd1xSDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1jSDK;->values:Lcom/appsflyer/internal/AFd1rSDK;

    .line 20
    iput-object p2, p0, Lcom/appsflyer/internal/AFe1jSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1xSDK;

    .line 79
    new-instance p1, Lcom/appsflyer/internal/AFe1jSDK$5;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFe1jSDK$5;-><init>(Lcom/appsflyer/internal/AFe1jSDK;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1jSDK;->registerClient:Lkotlin/Lazy;

    .line 97
    new-instance p1, Lcom/appsflyer/internal/AFe1jSDK$3;

    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFe1jSDK$3;-><init>(Lcom/appsflyer/internal/AFe1jSDK;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/appsflyer/internal/AFe1jSDK;->valueOf:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic AFInAppEventParameterName(Lcom/appsflyer/internal/AFe1jSDK;)Ljava/lang/String;
    .locals 0

    .line 5079
    iget-object p0, p0, Lcom/appsflyer/internal/AFe1jSDK;->registerClient:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static final AFInAppEventParameterName(Lcom/appsflyer/internal/AFe1gSDK;)V
    .locals 0

    invoke-static {p0}, Lcom/appsflyer/internal/AFe1jSDK$AFa1zSDK;->AFInAppEventParameterName(Lcom/appsflyer/internal/AFe1gSDK;)V

    return-void
.end method

.method public static final synthetic AFKeystoreWrapper(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 4149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, ""

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "SHA-256"

    .line 5027
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 5028
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 5060
    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 5028
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4150
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/CharSequence;

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "[^\\w]+"

    .line 4151
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, p1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 4152
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4149
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic AFKeystoreWrapper()Ljava/util/List;
    .locals 1

    .line 17
    sget-object v0, Lcom/appsflyer/internal/AFe1jSDK;->unregisterClient:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic valueOf(Lcom/appsflyer/internal/AFe1jSDK;)Lcom/appsflyer/internal/AFd1xSDK;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/appsflyer/internal/AFe1jSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFd1xSDK;

    return-object p0
.end method

.method public static final synthetic values(Lcom/appsflyer/internal/AFe1jSDK;)Lcom/appsflyer/internal/AFd1rSDK;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/appsflyer/internal/AFe1jSDK;->values:Lcom/appsflyer/internal/AFd1rSDK;

    return-object p0
.end method

.method public static final synthetic values(Lcom/appsflyer/internal/AFe1gSDK;)V
    .locals 0

    .line 17
    sput-object p0, Lcom/appsflyer/internal/AFe1jSDK;->AFLogger:Lcom/appsflyer/internal/AFe1gSDK;

    return-void
.end method

.method public static values()Z
    .locals 1

    .line 120
    sget-object v0, Lcom/appsflyer/internal/AFe1jSDK;->AFLogger:Lcom/appsflyer/internal/AFe1gSDK;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final AFInAppEventType()Ljava/lang/String;
    .locals 3

    .line 1127
    invoke-static {}, Lcom/appsflyer/internal/AFe1jSDK;->values()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    sget-object v0, Lcom/appsflyer/internal/AFe1iSDK;->values:Lcom/appsflyer/internal/AFe1iSDK;

    goto :goto_0

    .line 1130
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1iSDK;

    .line 53
    :goto_0
    sget-object v1, Lcom/appsflyer/internal/AFe1jSDK$AFa1tSDK;->values:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    const-string v2, ""

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    return-object v2

    .line 57
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 55
    :cond_2
    sget-object v0, Lcom/appsflyer/internal/AFe1jSDK;->AFLogger:Lcom/appsflyer/internal/AFe1gSDK;

    if-eqz v0, :cond_3

    .line 3003
    iget-object v0, v0, Lcom/appsflyer/internal/AFe1gSDK;->values:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    return-object v2

    :cond_4
    return-object v0

    .line 2097
    :cond_5
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1jSDK;->valueOf:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final valueOf()Ljava/lang/String;
    .locals 3

    .line 3127
    invoke-static {}, Lcom/appsflyer/internal/AFe1jSDK;->values()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3128
    sget-object v0, Lcom/appsflyer/internal/AFe1iSDK;->values:Lcom/appsflyer/internal/AFe1iSDK;

    goto :goto_0

    .line 3130
    :cond_0
    sget-object v0, Lcom/appsflyer/internal/AFe1iSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1iSDK;

    .line 63
    :goto_0
    sget-object v1, Lcom/appsflyer/internal/AFe1jSDK$AFa1tSDK;->values:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    const-string v2, ""

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    return-object v2

    .line 67
    :cond_1
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 65
    :cond_2
    sget-object v0, Lcom/appsflyer/internal/AFe1jSDK;->AFLogger:Lcom/appsflyer/internal/AFe1gSDK;

    if-eqz v0, :cond_3

    .line 4003
    iget-object v0, v0, Lcom/appsflyer/internal/AFe1gSDK;->AFKeystoreWrapper:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_4

    return-object v2

    :cond_4
    return-object v0

    :cond_5
    const-string v0, "appsflyersdk.com"

    return-object v0
.end method
