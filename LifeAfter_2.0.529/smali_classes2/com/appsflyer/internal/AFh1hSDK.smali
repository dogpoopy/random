.class public final Lcom/appsflyer/internal/AFh1hSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AFInAppEventType:Lcom/appsflyer/internal/AFh1fSDK;

.field private valueOf:Z


# direct methods
.method public constructor <init>(ZLcom/appsflyer/internal/AFh1fSDK;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean p1, p0, Lcom/appsflyer/internal/AFh1hSDK;->valueOf:Z

    .line 15
    iput-object p2, p0, Lcom/appsflyer/internal/AFh1hSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFh1fSDK;

    return-void
.end method


# virtual methods
.method public final AFInAppEventType()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFh1hSDK;->valueOf:Z

    return v0
.end method
