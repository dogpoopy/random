.class public final synthetic Lcom/appsflyer/internal/-$$Lambda$AFi1kSDK$LQ5v_7-_jJZceDc1zxWbe2TBuc0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/appsflyer/internal/AFi1kSDK;

.field private final synthetic f$1:Lcom/appsflyer/internal/AFi1pSDK;

.field private final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/appsflyer/internal/AFi1kSDK;Lcom/appsflyer/internal/AFi1pSDK;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/-$$Lambda$AFi1kSDK$LQ5v_7-_jJZceDc1zxWbe2TBuc0;->f$0:Lcom/appsflyer/internal/AFi1kSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/-$$Lambda$AFi1kSDK$LQ5v_7-_jJZceDc1zxWbe2TBuc0;->f$1:Lcom/appsflyer/internal/AFi1pSDK;

    iput-object p3, p0, Lcom/appsflyer/internal/-$$Lambda$AFi1kSDK$LQ5v_7-_jJZceDc1zxWbe2TBuc0;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/appsflyer/internal/-$$Lambda$AFi1kSDK$LQ5v_7-_jJZceDc1zxWbe2TBuc0;->f$0:Lcom/appsflyer/internal/AFi1kSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/-$$Lambda$AFi1kSDK$LQ5v_7-_jJZceDc1zxWbe2TBuc0;->f$1:Lcom/appsflyer/internal/AFi1pSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/-$$Lambda$AFi1kSDK$LQ5v_7-_jJZceDc1zxWbe2TBuc0;->f$2:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/AFi1kSDK;->lambda$LQ5v_7-_jJZceDc1zxWbe2TBuc0(Lcom/appsflyer/internal/AFi1kSDK;Lcom/appsflyer/internal/AFi1pSDK;Ljava/lang/Runnable;)V

    return-void
.end method
