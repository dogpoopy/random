.class public abstract Lcom/appsflyer/internal/AFh1vSDK;
.super Lcom/appsflyer/internal/AFa1pSDK;
.source ""


# instance fields
.field private final force:Z

.field private i:Z

.field private final w:Z


# direct methods
.method constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFh1vSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    if-eqz p5, :cond_0

    .line 22
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p5

    invoke-direct {p0, p1, p2, p5}, Lcom/appsflyer/internal/AFa1pSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 p1, 0x1

    if-eqz p3, :cond_1

    .line 23
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p0, Lcom/appsflyer/internal/AFh1vSDK;->w:Z

    if-eqz p4, :cond_2

    .line 24
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :cond_2
    iput-boolean p1, p0, Lcom/appsflyer/internal/AFh1vSDK;->force:Z

    return-void
.end method


# virtual methods
.method public final i()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFh1vSDK;->w:Z

    return v0
.end method

.method public final v()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFh1vSDK;->force:Z

    return v0
.end method

.method public final w()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFh1vSDK;->i:Z

    return v0
.end method
