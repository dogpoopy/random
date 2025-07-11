.class public final Lcom/google/android/gms/fitness/data/zzaj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# static fields
.field public static final zza:D

.field public static final zzb:D

.field public static final zzc:D

.field public static final zzd:Ljava/util/Set;

.field private static final zze:Lcom/google/android/gms/fitness/data/zzaj;


# instance fields
.field private final zzf:Ljava/util/Map;

.field private final zzg:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    sput-wide v5, Lcom/google/android/gms/fitness/data/zzaj;->zza:D

    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    .line 2
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x409f400000000000L    # 2000.0

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v3

    sput-wide v5, Lcom/google/android/gms/fitness/data/zzaj;->zzb:D

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v0

    sput-wide v2, Lcom/google/android/gms/fitness/data/zzaj;->zzc:D

    new-instance v0, Ljava/util/HashSet;

    const-string v1, "altitude"

    const-string v2, "duration"

    const-string v3, "food_item"

    const-string v4, "meal_type"

    const-string v5, "repetitions"

    const-string v6, "resistance"

    const-string v7, "resistance_type"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/zzaj;->zzd:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/fitness/data/zzaj;

    .line 6
    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzaj;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/zzaj;->zze:Lcom/google/android/gms/fitness/data/zzaj;

    return-void
.end method

.method private constructor <init>()V
    .locals 14

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Lcom/google/android/gms/fitness/data/zzai;

    const-wide v2, -0x3fa9800000000000L    # -90.0

    const-wide v4, 0x4056800000000000L    # 90.0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/fitness/data/zzai;-><init>(DDLcom/google/android/gms/fitness/data/zzah;)V

    const-string v1, "latitude"

    .line 2
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/fitness/data/zzai;

    const-wide v9, -0x3f99800000000000L    # -180.0

    const-wide v11, 0x4066800000000000L    # 180.0

    const/4 v13, 0x0

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/google/android/gms/fitness/data/zzai;-><init>(DDLcom/google/android/gms/fitness/data/zzah;)V

    const-string v2, "longitude"

    .line 3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/fitness/data/zzai;

    const-wide/16 v4, 0x0

    const-wide v6, 0x40c3880000000000L    # 10000.0

    const/4 v8, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/fitness/data/zzai;-><init>(DDLcom/google/android/gms/fitness/data/zzah;)V

    const-string v2, "accuracy"

    .line 4
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/fitness/data/zzai;

    const-wide v6, 0x408f400000000000L    # 1000.0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/fitness/data/zzai;-><init>(DDLcom/google/android/gms/fitness/data/zzah;)V

    const-string v2, "bpm"

    .line 5
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/fitness/data/zzai;

    const-wide v4, -0x3f07960000000000L    # -100000.0

    const-wide v6, 0x40f86a0000000000L    # 100000.0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/fitness/data/zzai;-><init>(DDLcom/google/android/gms/fitness/data/zzah;)V

    const-string v2, "altitude"

    .line 6
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/fitness/data/zzai;

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/fitness/data/zzai;-><init>(DDLcom/google/android/gms/fitness/data/zzah;)V

    const-string v2, "percentage"

    .line 7
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/fitness/data/zzai;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/fitness/data/zzai;-><init>(DDLcom/google/android/gms/fitness/data/zzah;)V

    const-string v2, "confidence"

    .line 8
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/fitness/data/zzai;

    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/fitness/data/zzai;-><init>(DDLcom/google/android/gms/fitness/data/zzah;)V

    const-string v2, "duration"

    .line 9
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/fitness/data/zzai;

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/fitness/data/zzai;-><init>(DDLcom/google/android/gms/fitness/data/zzah;)V

    const-string v2, "height"

    .line 10
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/fitness/data/zzai;

    const-wide v6, 0x408f400000000000L    # 1000.0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/fitness/data/zzai;-><init>(DDLcom/google/android/gms/fitness/data/zzah;)V

    const-string v2, "weight"

    .line 11
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/fitness/data/zzai;

    const-wide v6, 0x40c57c0000000000L    # 11000.0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/fitness/data/zzai;-><init>(DDLcom/google/android/gms/fitness/data/zzah;)V

    const-string v2, "speed"

    .line 12
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/zzaj;->zzg:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    .line 14
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Lcom/google/android/gms/fitness/data/zzai;

    sget-wide v4, Lcom/google/android/gms/fitness/data/zzaj;->zza:D

    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/fitness/data/zzai;-><init>(DDLcom/google/android/gms/fitness/data/zzah;)V

    const-string v1, "steps"

    .line 15
    invoke-static {v1, v7}, Lcom/google/android/gms/fitness/data/zzaj;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "com.google.step_count.delta"

    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/fitness/data/zzai;

    sget-wide v6, Lcom/google/android/gms/fitness/data/zzaj;->zzb:D

    const-wide/16 v4, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/fitness/data/zzai;-><init>(DDLcom/google/android/gms/fitness/data/zzah;)V

    const-string v2, "calories"

    .line 17
    invoke-static {v2, v1}, Lcom/google/android/gms/fitness/data/zzaj;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "com.google.calories.expended"

    .line 18
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/fitness/data/zzai;

    sget-wide v6, Lcom/google/android/gms/fitness/data/zzaj;->zzc:D

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/fitness/data/zzai;-><init>(DDLcom/google/android/gms/fitness/data/zzah;)V

    const-string v2, "distance"

    .line 19
    invoke-static {v2, v1}, Lcom/google/android/gms/fitness/data/zzaj;->zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "com.google.distance.delta"

    .line 20
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/zzaj;->zzf:Ljava/util/Map;

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/fitness/data/zzaj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/fitness/data/zzaj;->zze:Lcom/google/android/gms/fitness/data/zzaj;

    return-object v0
.end method

.method private static zzd(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/zzai;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/zzaj;->zzg:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fitness/data/zzai;

    return-object p1
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/fitness/data/zzai;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/zzaj;->zzf:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/fitness/data/zzai;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
