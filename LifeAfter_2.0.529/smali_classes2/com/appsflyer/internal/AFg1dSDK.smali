.class public final Lcom/appsflyer/internal/AFg1dSDK;
.super Lcom/appsflyer/internal/AFg1mSDK;
.source ""


# instance fields
.field private final valueOf:Z

.field private final values:Lcom/appsflyer/internal/AFd1nSDK;


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1nSDK;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1mSDK;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/AFg1dSDK;->values:Lcom/appsflyer/internal/AFd1nSDK;

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/appsflyer/internal/AFg1dSDK;->valueOf:Z

    return-void
.end method


# virtual methods
.method public final d(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 1048
    iget-object p3, p0, Lcom/appsflyer/internal/AFg1dSDK;->values:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p3

    invoke-virtual {p0, p2, p1}, Lcom/appsflyer/internal/AFg1dSDK;->AFInAppEventType(Ljava/lang/String;Lcom/appsflyer/internal/AFg1hSDK;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "D"

    invoke-interface {p3, p2, p1}, Lcom/appsflyer/internal/AFb1cSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final e(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V
    .locals 0

    const-string p4, ""

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p7, :cond_0

    .line 2048
    iget-object p4, p0, Lcom/appsflyer/internal/AFg1dSDK;->values:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {p4}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p4

    invoke-virtual {p0, p2, p1}, Lcom/appsflyer/internal/AFg1dSDK;->AFInAppEventType(Ljava/lang/String;Lcom/appsflyer/internal/AFg1hSDK;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "E"

    invoke-interface {p4, p2, p1}, Lcom/appsflyer/internal/AFb1cSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p7, :cond_1

    .line 26
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1dSDK;->values:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/appsflyer/internal/AFb1cSDK;->AFInAppEventParameterName(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final force(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6048
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->values:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lcom/appsflyer/internal/AFg1dSDK;->AFInAppEventType(Ljava/lang/String;Lcom/appsflyer/internal/AFg1hSDK;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "F"

    invoke-interface {v0, p2, p1}, Lcom/appsflyer/internal/AFb1cSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getShouldExtendMsg()Z
    .locals 1

    .line 10
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->valueOf:Z

    return v0
.end method

.method public final i(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 3048
    iget-object p3, p0, Lcom/appsflyer/internal/AFg1dSDK;->values:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p3

    invoke-virtual {p0, p2, p1}, Lcom/appsflyer/internal/AFg1dSDK;->AFInAppEventType(Ljava/lang/String;Lcom/appsflyer/internal/AFg1hSDK;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "I"

    invoke-interface {p3, p2, p1}, Lcom/appsflyer/internal/AFb1cSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final v(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 5048
    iget-object p3, p0, Lcom/appsflyer/internal/AFg1dSDK;->values:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p3

    invoke-virtual {p0, p2, p1}, Lcom/appsflyer/internal/AFg1dSDK;->AFInAppEventType(Ljava/lang/String;Lcom/appsflyer/internal/AFg1hSDK;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "V"

    invoke-interface {p3, p2, p1}, Lcom/appsflyer/internal/AFb1cSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final w(Lcom/appsflyer/internal/AFg1hSDK;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 4048
    iget-object p3, p0, Lcom/appsflyer/internal/AFg1dSDK;->values:Lcom/appsflyer/internal/AFd1nSDK;

    invoke-interface {p3}, Lcom/appsflyer/internal/AFd1nSDK;->afInfoLog()Lcom/appsflyer/internal/AFb1cSDK;

    move-result-object p3

    invoke-virtual {p0, p2, p1}, Lcom/appsflyer/internal/AFg1dSDK;->AFInAppEventType(Ljava/lang/String;Lcom/appsflyer/internal/AFg1hSDK;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "W"

    invoke-interface {p3, p2, p1}, Lcom/appsflyer/internal/AFb1cSDK;->valueOf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
