.class final Lcom/android/billingclient/api/zzcf;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@6.2.0"


# instance fields
.field private zza:Z

.field private zzb:Lcom/google/android/datatransport/Transport;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/TransportRuntime;->initialize(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportRuntime;->getInstance()Lcom/google/android/datatransport/runtime/TransportRuntime;

    move-result-object p1

    sget-object v0, Lcom/google/android/datatransport/cct/CCTDestination;->INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/datatransport/runtime/TransportRuntime;->newFactory(Lcom/google/android/datatransport/runtime/Destination;)Lcom/google/android/datatransport/TransportFactory;

    move-result-object p1

    const-string v0, "PLAY_BILLING_LIBRARY"

    const-class v1, Lcom/google/android/gms/internal/play_billing/zzhl;

    const-string v2, "proto"

    .line 4
    invoke-static {v2}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v2

    sget-object v3, Lcom/android/billingclient/api/zzce;->zza:Lcom/android/billingclient/api/zzce;

    .line 5
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/google/android/datatransport/TransportFactory;->getTransport(Ljava/lang/String;Ljava/lang/Class;Lcom/google/android/datatransport/Encoding;Lcom/google/android/datatransport/Transformer;)Lcom/google/android/datatransport/Transport;

    move-result-object p1

    iput-object p1, p0, Lcom/android/billingclient/api/zzcf;->zzb:Lcom/google/android/datatransport/Transport;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/billingclient/api/zzcf;->zza:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/play_billing/zzhl;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/zzcf;->zza:Z

    const-string v1, "BillingLogger"

    if-eqz v0, :cond_0

    const-string p1, "Skipping logging since initialization failed."

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/zzcf;->zzb:Lcom/google/android/datatransport/Transport;

    .line 2
    invoke-static {p1}, Lcom/google/android/datatransport/Event;->ofData(Ljava/lang/Object;)Lcom/google/android/datatransport/Event;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/datatransport/Transport;->send(Lcom/google/android/datatransport/Event;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    const-string p1, "logging failed."

    .line 3
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzb;->zzl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
