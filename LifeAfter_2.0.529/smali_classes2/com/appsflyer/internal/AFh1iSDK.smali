.class public final Lcom/appsflyer/internal/AFh1iSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AFInAppEventParameterName:J

.field public final AFInAppEventType:J

.field public final AFKeystoreWrapper:Ljava/lang/String;

.field public final e:Lcom/appsflyer/internal/AFh1fSDK;

.field public final registerClient:Ljava/lang/Throwable;

.field public final unregisterClient:Ljava/lang/String;

.field public final valueOf:I

.field public final values:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJILcom/appsflyer/internal/AFh1fSDK;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/appsflyer/internal/AFh1iSDK;->AFKeystoreWrapper:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Lcom/appsflyer/internal/AFh1iSDK;->values:Ljava/lang/String;

    .line 65
    iput-wide p3, p0, Lcom/appsflyer/internal/AFh1iSDK;->AFInAppEventParameterName:J

    .line 66
    iput-wide p5, p0, Lcom/appsflyer/internal/AFh1iSDK;->AFInAppEventType:J

    .line 67
    iput p7, p0, Lcom/appsflyer/internal/AFh1iSDK;->valueOf:I

    .line 68
    iput-object p8, p0, Lcom/appsflyer/internal/AFh1iSDK;->e:Lcom/appsflyer/internal/AFh1fSDK;

    .line 69
    iput-object p9, p0, Lcom/appsflyer/internal/AFh1iSDK;->unregisterClient:Ljava/lang/String;

    .line 70
    iput-object p10, p0, Lcom/appsflyer/internal/AFh1iSDK;->registerClient:Ljava/lang/Throwable;

    return-void
.end method
