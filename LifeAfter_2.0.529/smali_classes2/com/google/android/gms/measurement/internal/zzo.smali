.class public final Lcom/google/android/gms/measurement/internal/zzo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "com.google.android.gms:play-services-measurement-impl@@21.5.0"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/measurement/internal/zzo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zza:Ljava/lang/String;

.field public final zzaa:I

.field public final zzab:J

.field private final zzac:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final zzad:Ljava/lang/String;

.field public final zzb:Ljava/lang/String;

.field public final zzc:Ljava/lang/String;

.field public final zzd:Ljava/lang/String;

.field public final zze:J

.field public final zzf:J

.field public final zzg:Ljava/lang/String;

.field public final zzh:Z

.field public final zzi:Z

.field public final zzj:J

.field public final zzk:Ljava/lang/String;

.field public final zzl:J

.field public final zzm:I

.field public final zzn:Z

.field public final zzo:Z

.field public final zzp:Ljava/lang/String;

.field public final zzq:Ljava/lang/Boolean;

.field public final zzr:J

.field public final zzs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzt:Ljava/lang/String;

.field public final zzu:Ljava/lang/String;

.field public final zzv:Ljava/lang/String;

.field public final zzw:Z

.field public final zzx:J

.field public final zzy:I

.field public final zzz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/measurement/internal/zzq;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/zzq;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "JJIZZ",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJI",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-object v1, p1

    .line 4
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    move-object v1, p3

    .line 6
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/lang/String;

    move-wide v3, p4

    .line 7
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzj:J

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/lang/String;

    move-wide v3, p7

    .line 9
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzo;->zze:J

    move-wide v3, p9

    .line 10
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzf:J

    move-object/from16 v1, p11

    .line 11
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzg:Ljava/lang/String;

    move/from16 v1, p12

    .line 12
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    move/from16 v1, p13

    .line 13
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzi:Z

    move-object/from16 v1, p14

    .line 14
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzk:Ljava/lang/String;

    move-wide/from16 v3, p15

    .line 15
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzac:J

    move-wide/from16 v3, p17

    .line 16
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzl:J

    move/from16 v1, p19

    .line 17
    iput v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzm:I

    move/from16 v1, p20

    .line 18
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzn:Z

    move/from16 v1, p21

    .line 19
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzo:Z

    move-object/from16 v1, p22

    .line 20
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzp:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 21
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzq:Ljava/lang/Boolean;

    move-wide/from16 v3, p24

    .line 22
    iput-wide v3, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzr:J

    move-object/from16 v1, p26

    .line 23
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzs:Ljava/util/List;

    .line 24
    iput-object v2, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzad:Ljava/lang/String;

    move-object/from16 v1, p28

    .line 25
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzt:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 26
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzu:Ljava/lang/String;

    move-object/from16 v1, p30

    .line 27
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzv:Ljava/lang/String;

    move/from16 v1, p31

    .line 28
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzw:Z

    move-wide/from16 v1, p32

    .line 29
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzx:J

    move/from16 v1, p34

    .line 30
    iput v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzy:I

    move-object/from16 v1, p35

    .line 31
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzz:Ljava/lang/String;

    move/from16 v1, p36

    .line 32
    iput v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzaa:I

    move-wide/from16 v1, p37

    .line 33
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzab:J

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;ZZJLjava/lang/String;JJIZZLjava/lang/String;Ljava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "ZZJ",
            "Ljava/lang/String;",
            "JJIZZ",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZJI",
            "Ljava/lang/String;",
            "IJ)V"
        }
    .end annotation

    move-object v0, p0

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    move-object v1, p1

    .line 36
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    move-object v1, p2

    .line 37
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    move-object v1, p3

    .line 38
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/lang/String;

    move-wide v1, p12

    .line 39
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzj:J

    move-object v1, p4

    .line 40
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/lang/String;

    move-wide v1, p5

    .line 41
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zze:J

    move-wide v1, p7

    .line 42
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzf:J

    move-object v1, p9

    .line 43
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzg:Ljava/lang/String;

    move v1, p10

    .line 44
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    move v1, p11

    .line 45
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzi:Z

    move-object/from16 v1, p14

    .line 46
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzk:Ljava/lang/String;

    move-wide/from16 v1, p15

    .line 47
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzac:J

    move-wide/from16 v1, p17

    .line 48
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzl:J

    move/from16 v1, p19

    .line 49
    iput v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzm:I

    move/from16 v1, p20

    .line 50
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzn:Z

    move/from16 v1, p21

    .line 51
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzo:Z

    move-object/from16 v1, p22

    .line 52
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzp:Ljava/lang/String;

    move-object/from16 v1, p23

    .line 53
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzq:Ljava/lang/Boolean;

    move-wide/from16 v1, p24

    .line 54
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzr:J

    move-object/from16 v1, p26

    .line 55
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzs:Ljava/util/List;

    move-object/from16 v1, p27

    .line 56
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzad:Ljava/lang/String;

    move-object/from16 v1, p28

    .line 57
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzt:Ljava/lang/String;

    move-object/from16 v1, p29

    .line 58
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzu:Ljava/lang/String;

    move-object/from16 v1, p30

    .line 59
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzv:Ljava/lang/String;

    move/from16 v1, p31

    .line 60
    iput-boolean v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzw:Z

    move-wide/from16 v1, p32

    .line 61
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzx:J

    move/from16 v1, p34

    .line 62
    iput v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzy:I

    move-object/from16 v1, p35

    .line 63
    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzz:Ljava/lang/String;

    move/from16 v1, p36

    .line 64
    iput v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzaa:I

    move-wide/from16 v1, p37

    .line 65
    iput-wide v1, v0, Lcom/google/android/gms/measurement/internal/zzo;->zzab:J

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 68
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result p2

    .line 69
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zza:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzb:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzc:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 72
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzd:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 73
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zze:J

    const/4 v3, 0x6

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 74
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzf:J

    const/4 v3, 0x7

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzg:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 76
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzh:Z

    const/16 v1, 0x9

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 77
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzi:Z

    const/16 v1, 0xa

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 78
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzj:J

    const/16 v3, 0xb

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 79
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzk:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 80
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzac:J

    const/16 v3, 0xd

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 81
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzl:J

    const/16 v3, 0xe

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 82
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzm:I

    const/16 v1, 0xf

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 83
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzn:Z

    const/16 v1, 0x10

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 84
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzo:Z

    const/16 v1, 0x12

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 85
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzp:Ljava/lang/String;

    const/16 v1, 0x13

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 86
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzq:Ljava/lang/Boolean;

    const/16 v1, 0x15

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBooleanObject(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    .line 87
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzr:J

    const/16 v3, 0x16

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 88
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzs:Ljava/util/List;

    const/16 v1, 0x17

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 89
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzad:Ljava/lang/String;

    const/16 v1, 0x18

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzt:Ljava/lang/String;

    const/16 v1, 0x19

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 91
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzu:Ljava/lang/String;

    const/16 v1, 0x1a

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 92
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzv:Ljava/lang/String;

    const/16 v1, 0x1b

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 93
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzw:Z

    const/16 v1, 0x1c

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 94
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzx:J

    const/16 v3, 0x1d

    invoke-static {p1, v3, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 95
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzy:I

    const/16 v1, 0x1e

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 96
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzz:Ljava/lang/String;

    const/16 v1, 0x1f

    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 97
    iget v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzaa:I

    const/16 v1, 0x20

    invoke-static {p1, v1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 98
    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzo;->zzab:J

    const/16 v2, 0x22

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 99
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    return-void
.end method
