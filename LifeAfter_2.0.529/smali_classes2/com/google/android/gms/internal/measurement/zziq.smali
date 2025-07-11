.class final Lcom/google/android/gms/internal/measurement/zziq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-base@@21.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/gms/internal/measurement/zzis<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final zzb:Lcom/google/android/gms/internal/measurement/zziq;


# instance fields
.field final zza:Lcom/google/android/gms/internal/measurement/zzlg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzlg<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private zzc:Z

.field private zzd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 109
    new-instance v0, Lcom/google/android/gms/internal/measurement/zziq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zziq;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/measurement/zziq;->zzb:Lcom/google/android/gms/internal/measurement/zziq;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 111
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zzlg;->zza(I)Lcom/google/android/gms/internal/measurement/zzlg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/measurement/zzlg;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzlg<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zziq;->zze()V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 117
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzlg;->zza(I)Lcom/google/android/gms/internal/measurement/zzlg;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/zziq;-><init>(Lcom/google/android/gms/internal/measurement/zzlg;)V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zziq;->zze()V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/measurement/zzis;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zzis<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 34
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzis;->zzb()Lcom/google/android/gms/internal/measurement/zzmn;

    move-result-object v0

    .line 35
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzis;->zza()I

    move-result v1

    .line 36
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzis;->zze()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 37
    check-cast p1, Ljava/util/List;

    .line 38
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzis;->zzd()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_2

    .line 39
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    return v2

    .line 42
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 43
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Lcom/google/android/gms/internal/measurement/zzmn;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    .line 46
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzig;->zzi(I)I

    move-result p0

    add-int/2addr p0, v2

    .line 47
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 50
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 51
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Lcom/google/android/gms/internal/measurement/zzmn;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_3
    return v2

    .line 54
    :cond_4
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Lcom/google/android/gms/internal/measurement/zzmn;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzmn;ILjava/lang/Object;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzi(I)I

    move-result p1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmn;->zzj:Lcom/google/android/gms/internal/measurement/zzmn;

    if-ne p0, v0, :cond_0

    .line 3
    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzkj;

    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Lcom/google/android/gms/internal/measurement/zzkj;)Z

    shl-int/lit8 p1, p1, 0x1

    .line 5
    :cond_0
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Lcom/google/android/gms/internal/measurement/zzmn;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private static zza(Lcom/google/android/gms/internal/measurement/zzmn;Ljava/lang/Object;)I
    .locals 1

    .line 6
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzip;->zzb:[I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmn;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 33
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :pswitch_0
    instance-of p0, p1, Lcom/google/android/gms/internal/measurement/zzjc;

    if-eqz p0, :cond_0

    .line 31
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzjc;->zza()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzd(I)I

    move-result p0

    return p0

    .line 32
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzd(I)I

    move-result p0

    return p0

    .line 26
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzf(J)I

    move-result p0

    return p0

    .line 25
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzh(I)I

    move-result p0

    return p0

    .line 24
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zze(J)I

    move-result p0

    return p0

    .line 23
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzg(I)I

    move-result p0

    return p0

    .line 22
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzj(I)I

    move-result p0

    return p0

    .line 16
    :pswitch_6
    instance-of p0, p1, Lcom/google/android/gms/internal/measurement/zzhm;

    if-eqz p0, :cond_1

    .line 17
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(Lcom/google/android/gms/internal/measurement/zzhm;)I

    move-result p0

    return p0

    .line 18
    :cond_1
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zza([B)I

    move-result p0

    return p0

    .line 19
    :pswitch_7
    instance-of p0, p1, Lcom/google/android/gms/internal/measurement/zzhm;

    if-eqz p0, :cond_2

    .line 20
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(Lcom/google/android/gms/internal/measurement/zzhm;)I

    move-result p0

    return p0

    .line 21
    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 27
    :pswitch_8
    instance-of p0, p1, Lcom/google/android/gms/internal/measurement/zzjj;

    if-eqz p0, :cond_3

    .line 28
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Lcom/google/android/gms/internal/measurement/zzjn;)I

    move-result p0

    return p0

    .line 29
    :cond_3
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkj;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(Lcom/google/android/gms/internal/measurement/zzkj;)I

    move-result p0

    return p0

    .line 15
    :pswitch_9
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkj;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(Lcom/google/android/gms/internal/measurement/zzkj;)I

    move-result p0

    return p0

    .line 14
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Z)I

    move-result p0

    return p0

    .line 13
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zze(I)I

    move-result p0

    return p0

    .line 12
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(J)I

    move-result p0

    return p0

    .line 11
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zzf(I)I

    move-result p0

    return p0

    .line 10
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzg(J)I

    move-result p0

    return p0

    .line 9
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzd(J)I

    move-result p0

    return p0

    .line 8
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zzig;->zza(F)I

    move-result p0

    return p0

    .line 7
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zza(D)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zza(Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 63
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzis;

    .line 64
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 65
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzis;->zzc()Lcom/google/android/gms/internal/measurement/zzmx;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/measurement/zzmx;->zzi:Lcom/google/android/gms/internal/measurement/zzmx;

    if-ne v2, v3, :cond_1

    .line 66
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzis;->zze()Z

    move-result v2

    if-nez v2, :cond_1

    .line 67
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzis;->zzd()Z

    move-result v2

    if-nez v2, :cond_1

    .line 68
    instance-of v0, v1, Lcom/google/android/gms/internal/measurement/zzjj;

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzis;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzis;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzjj;

    .line 71
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/measurement/zzig;->zza(ILcom/google/android/gms/internal/measurement/zzjn;)I

    move-result p0

    return p0

    .line 73
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/measurement/zzis;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzis;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzkj;

    .line 74
    invoke-static {p0, v1}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(ILcom/google/android/gms/internal/measurement/zzkj;)I

    move-result p0

    return p0

    .line 75
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Lcom/google/android/gms/internal/measurement/zzis;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private final zza(Lcom/google/android/gms/internal/measurement/zzis;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 100
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjj;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjj;->zza()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private static zza(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 91
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzks;

    if-eqz v0, :cond_0

    .line 92
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzks;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzks;->zza()Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object p0

    return-object p0

    .line 93
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 94
    check-cast p0, [B

    .line 95
    array-length v0, p0

    new-array v0, v0, [B

    .line 96
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    return-object p0
.end method

.method static zza(Lcom/google/android/gms/internal/measurement/zzig;Lcom/google/android/gms/internal/measurement/zzmn;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    sget-object v0, Lcom/google/android/gms/internal/measurement/zzmn;->zzj:Lcom/google/android/gms/internal/measurement/zzmn;

    if-ne p1, v0, :cond_0

    .line 199
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzkj;

    invoke-static {p3}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Lcom/google/android/gms/internal/measurement/zzkj;)Z

    const/4 p1, 0x3

    .line 201
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 203
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/measurement/zzkj;->zza(Lcom/google/android/gms/internal/measurement/zzig;)V

    const/4 p1, 0x4

    .line 204
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    return-void

    .line 207
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmn;->zza()I

    move-result v0

    .line 208
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(II)V

    .line 210
    sget-object p2, Lcom/google/android/gms/internal/measurement/zzip;->zzb:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzmn;->ordinal()I

    move-result p1

    aget p1, p2, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 254
    :pswitch_0
    instance-of p1, p3, Lcom/google/android/gms/internal/measurement/zzjc;

    if-eqz p1, :cond_1

    .line 255
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzjc;

    invoke-interface {p3}, Lcom/google/android/gms/internal/measurement/zzjc;->zza()I

    move-result p1

    .line 256
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(I)V

    return-void

    .line 258
    :cond_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 259
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(I)V

    goto/16 :goto_0

    .line 252
    :pswitch_1
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzh(J)V

    return-void

    .line 250
    :pswitch_2
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzk(I)V

    return-void

    .line 247
    :pswitch_3
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 248
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zza(J)V

    return-void

    .line 244
    :pswitch_4
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 245
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zza(I)V

    return-void

    .line 242
    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzc(I)V

    return-void

    .line 237
    :pswitch_6
    instance-of p1, p3, Lcom/google/android/gms/internal/measurement/zzhm;

    if-eqz p1, :cond_2

    .line 238
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Lcom/google/android/gms/internal/measurement/zzhm;)V

    return-void

    .line 239
    :cond_2
    check-cast p3, [B

    const/4 p1, 0x0

    .line 240
    array-length p2, p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzb([BII)V

    return-void

    .line 233
    :pswitch_7
    instance-of p1, p3, Lcom/google/android/gms/internal/measurement/zzhm;

    if-eqz p1, :cond_3

    .line 234
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzhm;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Lcom/google/android/gms/internal/measurement/zzhm;)V

    return-void

    .line 235
    :cond_3
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Ljava/lang/String;)V

    return-void

    .line 231
    :pswitch_8
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzkj;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/measurement/zzig;->zza(Lcom/google/android/gms/internal/measurement/zzkj;)V

    return-void

    .line 228
    :pswitch_9
    check-cast p3, Lcom/google/android/gms/internal/measurement/zzkj;

    .line 229
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/measurement/zzkj;->zza(Lcom/google/android/gms/internal/measurement/zzig;)V

    return-void

    .line 226
    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(Z)V

    return-void

    .line 224
    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zza(I)V

    return-void

    .line 222
    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zza(J)V

    return-void

    .line 220
    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(I)V

    return-void

    .line 218
    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(J)V

    return-void

    .line 215
    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 216
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(J)V

    return-void

    .line 213
    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(F)V

    return-void

    .line 211
    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzig;->zzb(D)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static zzb()Lcom/google/android/gms/internal/measurement/zziq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/measurement/zzis<",
            "TT;>;>()",
            "Lcom/google/android/gms/internal/measurement/zziq<",
            "TT;>;"
        }
    .end annotation

    .line 77
    sget-object v0, Lcom/google/android/gms/internal/measurement/zziq;->zzb:Lcom/google/android/gms/internal/measurement/zziq;

    return-object v0
.end method

.method private final zzb(Lcom/google/android/gms/internal/measurement/zzis;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 163
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzis;->zze()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 168
    move-object p2, v0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 169
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/measurement/zziq;->zzc(Lcom/google/android/gms/internal/measurement/zzis;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    .line 165
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/measurement/zziq;->zzc(Lcom/google/android/gms/internal/measurement/zzis;Ljava/lang/Object;)V

    .line 174
    :goto_1
    instance-of v0, p2, Lcom/google/android/gms/internal/measurement/zzjj;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zzd:Z

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzlg;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final zzb(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 137
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzis;

    .line 138
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 139
    instance-of v1, p1, Lcom/google/android/gms/internal/measurement/zzjj;

    if-eqz v1, :cond_0

    .line 140
    check-cast p1, Lcom/google/android/gms/internal/measurement/zzjj;

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzjj;->zza()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object p1

    .line 141
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzis;->zze()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 142
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Lcom/google/android/gms/internal/measurement/zzis;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 144
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 145
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 146
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/measurement/zzlg;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 149
    :cond_3
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzis;->zzc()Lcom/google/android/gms/internal/measurement/zzmx;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzmx;->zzi:Lcom/google/android/gms/internal/measurement/zzmx;

    if-ne v1, v2, :cond_6

    .line 150
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Lcom/google/android/gms/internal/measurement/zzis;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 152
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/zzlg;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 153
    :cond_4
    instance-of v2, v1, Lcom/google/android/gms/internal/measurement/zzks;

    if-eqz v2, :cond_5

    .line 154
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzks;

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzks;

    .line 155
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzis;->zza(Lcom/google/android/gms/internal/measurement/zzks;Lcom/google/android/gms/internal/measurement/zzks;)Lcom/google/android/gms/internal/measurement/zzks;

    move-result-object p1

    goto :goto_1

    .line 156
    :cond_5
    check-cast v1, Lcom/google/android/gms/internal/measurement/zzkj;

    .line 157
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/zzkj;->zzce()Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object v1

    check-cast p1, Lcom/google/android/gms/internal/measurement/zzkj;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/measurement/zzis;->zza(Lcom/google/android/gms/internal/measurement/zzkm;Lcom/google/android/gms/internal/measurement/zzkj;)Lcom/google/android/gms/internal/measurement/zzkm;

    move-result-object p1

    .line 158
    invoke-interface {p1}, Lcom/google/android/gms/internal/measurement/zzkm;->zzab()Lcom/google/android/gms/internal/measurement/zzkj;

    move-result-object p1

    .line 159
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/zzlg;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 161
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/measurement/zzlg;->zza(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static zzb(Ljava/lang/Object;)Z
    .locals 1

    .line 286
    instance-of v0, p0, Lcom/google/android/gms/internal/measurement/zzkl;

    if-eqz v0, :cond_0

    .line 287
    check-cast p0, Lcom/google/android/gms/internal/measurement/zzkl;

    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzkl;->zzci()Z

    move-result p0

    return p0

    .line 288
    :cond_0
    instance-of p0, p0, Lcom/google/android/gms/internal/measurement/zzjj;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 290
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static zzc(Lcom/google/android/gms/internal/measurement/zzis;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 178
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzis;->zzb()Lcom/google/android/gms/internal/measurement/zzmn;

    move-result-object v0

    .line 179
    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/zziz;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lcom/google/android/gms/internal/measurement/zzip;->zza:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmn;->zzb()Lcom/google/android/gms/internal/measurement/zzmx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzmx;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 189
    :pswitch_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzkj;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjj;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 188
    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzjc;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 187
    :pswitch_2
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zzhm;

    if-nez v0, :cond_1

    instance-of v0, p1, [B

    if-eqz v0, :cond_0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    .line 186
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_1

    .line 185
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_1

    .line 184
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_1

    .line 183
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_1

    .line 182
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_1

    .line 181
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 192
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 193
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzis;->zza()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 194
    invoke-interface {p0}, Lcom/google/android/gms/internal/measurement/zzis;->zzb()Lcom/google/android/gms/internal/measurement/zzmn;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzmn;->zzb()Lcom/google/android/gms/internal/measurement/zzmx;

    move-result-object p0

    aput-object p0, v3, v1

    const/4 p0, 0x2

    .line 195
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, p0

    const-string p0, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    .line 196
    invoke-static {p0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static zzc(Ljava/util/Map$Entry;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/internal/measurement/zzis<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 277
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzis;

    .line 278
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzis;->zzc()Lcom/google/android/gms/internal/measurement/zzmx;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/measurement/zzmx;->zzi:Lcom/google/android/gms/internal/measurement/zzmx;

    if-ne v1, v2, :cond_2

    .line 279
    invoke-interface {v0}, Lcom/google/android/gms/internal/measurement/zzis;->zze()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 281
    invoke-static {v0}, Lcom/google/android/gms/internal/measurement/zziq;->zzb(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 284
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/measurement/zziq;->zzb(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/google/android/gms/internal/measurement/zziq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/zziq;-><init>()V

    const/4 v1, 0x0

    .line 81
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 82
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 83
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzis;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zziq;->zzb(Lcom/google/android/gms/internal/measurement/zzis;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlg;->zzc()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/measurement/zzis;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/internal/measurement/zziq;->zzb(Lcom/google/android/gms/internal/measurement/zzis;Ljava/lang/Object;)V

    goto :goto_1

    .line 88
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/measurement/zziq;->zzd:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/measurement/zziq;->zzd:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 263
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/measurement/zziq;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 265
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/measurement/zziq;

    .line 266
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/measurement/zzlg;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlg;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zza()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 57
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzc()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 60
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zziq;->zza(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final zza(Lcom/google/android/gms/internal/measurement/zziq;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/measurement/zziq<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    :goto_0
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 131
    iget-object v1, p1, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/measurement/zziq;->zzb(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/measurement/zzlg;->zzc()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 134
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zziq;->zzb(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method final zzc()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 103
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zzd:Z

    if-eqz v0, :cond_0

    .line 104
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjo;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlg;->zzd()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjo;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzd()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 106
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zzd:Z

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzjo;

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlg;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzjo;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlg;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zze()V
    .locals 3

    .line 120
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zzc:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 122
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 123
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 124
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/android/gms/internal/measurement/zzix;

    if-eqz v2, :cond_1

    .line 125
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/zzix;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzix;->zzcg()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 127
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzlg;->zza()V

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zzc:Z

    return-void
.end method

.method public final zzf()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zziq;->zzc:Z

    return v0
.end method

.method public final zzg()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 268
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 269
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/measurement/zzlg;->zzb(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zziq;->zzc(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 272
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/zziq;->zza:Lcom/google/android/gms/internal/measurement/zzlg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/zzlg;->zzc()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 273
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/zziq;->zzc(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
