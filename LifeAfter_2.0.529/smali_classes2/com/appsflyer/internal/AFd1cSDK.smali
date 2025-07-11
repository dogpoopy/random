.class public final Lcom/appsflyer/internal/AFd1cSDK;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AFInAppEventType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p0}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName(Ljava/lang/String;)I

    move-result p0

    .line 13
    invoke-static {p1}, Lcom/appsflyer/internal/AFc1uSDK;->AFInAppEventParameterName(Ljava/lang/String;)I

    move-result v0

    .line 14
    invoke-static {p1}, Lcom/appsflyer/internal/AFe1wSDK;->valueOf(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v1

    .line 15
    invoke-static {p1}, Lcom/appsflyer/internal/AFe1wSDK;->AFKeystoreWrapper(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-nez v1, :cond_1

    if-ne v0, p0, :cond_0

    return v2

    :cond_0
    return v3

    :cond_1
    if-eqz p1, :cond_3

    .line 20
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-gt v0, p0, :cond_2

    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gt p0, p1, :cond_2

    return v2

    :cond_2
    return v3

    :cond_3
    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gt p1, p0, :cond_4

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-gt p0, p1, :cond_4

    return v2

    :cond_4
    return v3
.end method
