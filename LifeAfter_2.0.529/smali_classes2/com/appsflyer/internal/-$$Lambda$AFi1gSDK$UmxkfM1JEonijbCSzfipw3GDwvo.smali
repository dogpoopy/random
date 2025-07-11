.class public final synthetic Lcom/appsflyer/internal/-$$Lambda$AFi1gSDK$UmxkfM1JEonijbCSzfipw3GDwvo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/appsflyer/internal/AFi1gSDK;

.field private final synthetic f$1:Landroid/hardware/SensorEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/appsflyer/internal/AFi1gSDK;Landroid/hardware/SensorEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsflyer/internal/-$$Lambda$AFi1gSDK$UmxkfM1JEonijbCSzfipw3GDwvo;->f$0:Lcom/appsflyer/internal/AFi1gSDK;

    iput-object p2, p0, Lcom/appsflyer/internal/-$$Lambda$AFi1gSDK$UmxkfM1JEonijbCSzfipw3GDwvo;->f$1:Landroid/hardware/SensorEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/appsflyer/internal/-$$Lambda$AFi1gSDK$UmxkfM1JEonijbCSzfipw3GDwvo;->f$0:Lcom/appsflyer/internal/AFi1gSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/-$$Lambda$AFi1gSDK$UmxkfM1JEonijbCSzfipw3GDwvo;->f$1:Landroid/hardware/SensorEvent;

    invoke-static {v0, v1}, Lcom/appsflyer/internal/AFi1gSDK;->lambda$UmxkfM1JEonijbCSzfipw3GDwvo(Lcom/appsflyer/internal/AFi1gSDK;Landroid/hardware/SensorEvent;)V

    return-void
.end method
