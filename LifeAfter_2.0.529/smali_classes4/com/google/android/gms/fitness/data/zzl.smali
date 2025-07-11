.class public final Lcom/google/android/gms/fitness/data/zzl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# static fields
.field public static final zza:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x49

    new-array v1, v1, [Lcom/google/android/gms/fitness/data/DataType;

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_MOVE_MINUTES:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_MOVE_MINUTES:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WORKOUT_EXERCISE:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zze:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_ACTIVITY_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BLOOD_GLUCOSE:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v3, 0x6

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BLOOD_GLUCOSE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    const/4 v3, 0x7

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BLOOD_PRESSURE:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x8

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BLOOD_PRESSURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x9

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_BODY_FAT_PERCENTAGE:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0xa

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_BODY_FAT_PERCENTAGE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0xb

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0xc

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BODY_TEMPERATURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_BASAL_METABOLIC_RATE:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_BASAL_METABOLIC_RATE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_CERVICAL_MUCUS:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_CERVICAL_POSITION:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_PEDALING_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_PEDALING_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_WHEEL_REVOLUTION:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_WHEEL_RPM:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzd:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEART_POINTS:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_HEART_POINTS:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEART_RATE_BPM:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_HEART_RATE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_HEIGHT_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HYDRATION:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_HYDRATION:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x22

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzn:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x23

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzm:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x24

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzp:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x25

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zza:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x26

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzk:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x27

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzr:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x28

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzj:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x29

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzq:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzs:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzh:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzo:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzl:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzf:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzg:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x30

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_LOCATION_BOUNDING_BOX:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x31

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_LOCATION_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x32

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_LOCATION_TRACK:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x33

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_MENSTRUATION:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x34

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_NUTRITION:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x35

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_NUTRITION_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x36

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_OVULATION_TEST:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x37

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_OXYGEN_SATURATION:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x38

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_OXYGEN_SATURATION_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x39

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_POWER_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_POWER_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzc:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_SLEEP_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_SPEED:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_SPEED_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x40

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x41

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x42

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x43

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x44

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->zzi:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x45

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_VAGINAL_SPOTTING:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x46

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x47

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_WEIGHT_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x48

    aput-object v2, v1, v3

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/fitness/data/zzl;->zza:Ljava/util/Set;

    return-void
.end method

.method public static zza(Ljava/lang/String;)Lcom/google/android/gms/fitness/data/DataType;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "com.google.internal.paced_walking_attributes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x28

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "com.google.body.temperature.summary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xc

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "com.google.speed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3b

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "com.google.oxygen_saturation.summary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x35

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "com.google.cervical_mucus"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x10

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "com.google.cervical_position"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x11

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "com.google.nutrition"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x31

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "com.google.active_minutes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "com.google.cycling.wheel_revolution.cumulative"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x14

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "com.google.internal.sleep_attributes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2b

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "com.google.ovulation_test"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x33

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "com.google.oxygen_saturation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x34

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "com.google.vaginal_spotting"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x41

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "com.google.internal.sedentary_time"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x29

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "com.google.body.fat.percentage.summary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "com.google.time_zone_change"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x40

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "com.google.device_on_body"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x16

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "com.google.hydration"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1e

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "com.google.blood_pressure"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x7

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "com.google.calories.expended"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xf

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "com.google.speed.summary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3c

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "com.google.activity.summary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "com.google.body.fat.percentage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x9

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "com.google.step_count.cumulative"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3e

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "com.google.internal.skin_temperature"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2a

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "com.google.power.sample"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x36

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "com.google.activity.segment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "com.google.step_count.cadence"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3d

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "com.google.calories.bmr.summary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xe

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "com.google.sensor.events"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x39

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "com.google.activity.samples"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "com.google.internal.custom_max_heart_rate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x21

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "com.google.blood_pressure.summary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x8

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "com.google.calories.bmr"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xd

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "com.google.heart_rate.bpm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1a

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "com.google.activity.exercise"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "com.google.internal.custom_heart_rate_zone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x20

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "com.google.nutrition.summary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x32

    goto/16 :goto_1

    :sswitch_26
    const-string v0, "com.google.power.summary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x37

    goto/16 :goto_1

    :sswitch_27
    const-string v0, "com.google.blood_glucose"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto/16 :goto_1

    :sswitch_28
    const-string v0, "com.google.sleep.segment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3a

    goto/16 :goto_1

    :sswitch_29
    const-string v0, "com.google.body.temperature"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xb

    goto/16 :goto_1

    :sswitch_2a
    const-string v0, "com.google.weight.summary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x43

    goto/16 :goto_1

    :sswitch_2b
    const-string v0, "com.google.internal.active_minutes_combined"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1f

    goto/16 :goto_1

    :sswitch_2c
    const-string v0, "com.google.weight"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x42

    goto/16 :goto_1

    :sswitch_2d
    const-string v0, "com.google.internal.goal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x22

    goto/16 :goto_1

    :sswitch_2e
    const-string v0, "com.google.heart_rate.summary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1b

    goto/16 :goto_1

    :sswitch_2f
    const-string v0, "com.google.internal.internal_device_temperature"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x23

    goto/16 :goto_1

    :sswitch_30
    const-string v0, "com.google.location.track"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2f

    goto/16 :goto_1

    :sswitch_31
    const-string v0, "com.google.internal.magnetic_field_presence"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x24

    goto/16 :goto_1

    :sswitch_32
    const-string v0, "com.google.cycling.pedaling.cadence"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x12

    goto/16 :goto_1

    :sswitch_33
    const-string v0, "com.google.cycling.pedaling.cumulative"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x13

    goto/16 :goto_1

    :sswitch_34
    const-string v0, "com.google.internal.momentary_stress_algorithm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x26

    goto/16 :goto_1

    :sswitch_35
    const-string v0, "com.google.height"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1c

    goto/16 :goto_1

    :sswitch_36
    const-string v0, "com.google.step_count.delta"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x3f

    goto/16 :goto_1

    :sswitch_37
    const-string v0, "com.google.heart_minutes.summary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x19

    goto/16 :goto_1

    :sswitch_38
    const-string v0, "com.google.internal.momentary_stress_algorithm_windows"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x27

    goto/16 :goto_1

    :sswitch_39
    const-string v0, "com.google.distance.delta"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x17

    goto/16 :goto_1

    :sswitch_3a
    const-string v0, "com.google.internal.sleep_schedule"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2c

    goto/16 :goto_1

    :sswitch_3b
    const-string v0, "com.google.height.summary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x1d

    goto :goto_1

    :sswitch_3c
    const-string v0, "com.google.menstruation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x30

    goto :goto_1

    :sswitch_3d
    const-string v0, "com.google.location.sample"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2e

    goto :goto_1

    :sswitch_3e
    const-string v0, "com.google.internal.met"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x25

    goto :goto_1

    :sswitch_3f
    const-string v0, "com.google.blood_glucose.summary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :sswitch_40
    const-string v0, "com.google.heart_minutes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x18

    goto :goto_1

    :sswitch_41
    const-string v0, "com.google.location.bounding_box"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x2d

    goto :goto_1

    :sswitch_42
    const-string v0, "com.google.respiratory_rate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x38

    goto :goto_1

    :sswitch_43
    const-string v0, "com.google.cycling.wheel_revolution.rpm"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x15

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :pswitch_0
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_WEIGHT_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 3
    :pswitch_1
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 4
    :pswitch_2
    sget-object p0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_VAGINAL_SPOTTING:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 5
    :pswitch_3
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zzi:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 6
    :pswitch_4
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 7
    :pswitch_5
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 8
    :pswitch_6
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_STEP_COUNT_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 9
    :pswitch_7
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_SPEED_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 10
    :pswitch_8
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_SPEED:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 11
    :pswitch_9
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_SLEEP_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 12
    :pswitch_a
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zzb:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 13
    :pswitch_b
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zzc:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 14
    :pswitch_c
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_POWER_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 15
    :pswitch_d
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_POWER_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 16
    :pswitch_e
    sget-object p0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_OXYGEN_SATURATION_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 17
    :pswitch_f
    sget-object p0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_OXYGEN_SATURATION:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 18
    :pswitch_10
    sget-object p0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_OVULATION_TEST:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 19
    :pswitch_11
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_NUTRITION_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 20
    :pswitch_12
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_NUTRITION:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 21
    :pswitch_13
    sget-object p0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_MENSTRUATION:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 22
    :pswitch_14
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_LOCATION_TRACK:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 23
    :pswitch_15
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_LOCATION_SAMPLE:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 24
    :pswitch_16
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_LOCATION_BOUNDING_BOX:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 25
    :pswitch_17
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zzg:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 26
    :pswitch_18
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zzf:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 27
    :pswitch_19
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zzl:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 28
    :pswitch_1a
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zzo:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 29
    :pswitch_1b
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zzh:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 30
    :pswitch_1c
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zzs:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 31
    :pswitch_1d
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zzq:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 32
    :pswitch_1e
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zzj:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 33
    :pswitch_1f
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zzr:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 34
    :pswitch_20
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zzk:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 35
    :pswitch_21
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zza:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 36
    :pswitch_22
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zzp:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 37
    :pswitch_23
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zzm:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 38
    :pswitch_24
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zzn:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 39
    :pswitch_25
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HYDRATION:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 40
    :pswitch_26
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_HEIGHT_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 41
    :pswitch_27
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEIGHT:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 42
    :pswitch_28
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_HEART_RATE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 43
    :pswitch_29
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEART_RATE_BPM:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 44
    :pswitch_2a
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_HEART_POINTS:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 45
    :pswitch_2b
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_HEART_POINTS:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 46
    :pswitch_2c
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_DISTANCE_DELTA:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 47
    :pswitch_2d
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zzd:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 48
    :pswitch_2e
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_WHEEL_RPM:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 49
    :pswitch_2f
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_WHEEL_REVOLUTION:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 50
    :pswitch_30
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_PEDALING_CUMULATIVE:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 51
    :pswitch_31
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CYCLING_PEDALING_CADENCE:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 52
    :pswitch_32
    sget-object p0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_CERVICAL_POSITION:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 53
    :pswitch_33
    sget-object p0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_CERVICAL_MUCUS:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 54
    :pswitch_34
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_CALORIES_EXPENDED:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 55
    :pswitch_35
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_BASAL_METABOLIC_RATE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 56
    :pswitch_36
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_BASAL_METABOLIC_RATE:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 57
    :pswitch_37
    sget-object p0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BODY_TEMPERATURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 58
    :pswitch_38
    sget-object p0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 59
    :pswitch_39
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_BODY_FAT_PERCENTAGE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 60
    :pswitch_3a
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_BODY_FAT_PERCENTAGE:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 61
    :pswitch_3b
    sget-object p0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BLOOD_PRESSURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 62
    :pswitch_3c
    sget-object p0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BLOOD_PRESSURE:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 63
    :pswitch_3d
    sget-object p0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BLOOD_GLUCOSE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 64
    :pswitch_3e
    sget-object p0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BLOOD_GLUCOSE:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 65
    :pswitch_3f
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->AGGREGATE_ACTIVITY_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 66
    :pswitch_40
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_ACTIVITY_SEGMENT:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 67
    :pswitch_41
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->zze:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 68
    :pswitch_42
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_WORKOUT_EXERCISE:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    .line 69
    :pswitch_43
    sget-object p0, Lcom/google/android/gms/fitness/data/DataType;->TYPE_MOVE_MINUTES:Lcom/google/android/gms/fitness/data/DataType;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x7aca8e3f -> :sswitch_43
        -0x79256ae3 -> :sswitch_42
        -0x78a3165f -> :sswitch_41
        -0x7733eac2 -> :sswitch_40
        -0x73995747 -> :sswitch_3f
        -0x6cb3a32d -> :sswitch_3e
        -0x68c618a5 -> :sswitch_3d
        -0x62f0f65d -> :sswitch_3c
        -0x5551ea79 -> :sswitch_3b
        -0x546b9058 -> :sswitch_3a
        -0x4a6f73d9 -> :sswitch_39
        -0x472e60f8 -> :sswitch_38
        -0x41c9510a -> :sswitch_37
        -0x41b72132 -> :sswitch_36
        -0x41086331 -> :sswitch_35
        -0x3d29a63c -> :sswitch_34
        -0x3703827a -> :sswitch_33
        -0x35adf422 -> :sswitch_32
        -0x3539984e -> :sswitch_31
        -0x34d7fa86 -> :sswitch_30
        -0x306d883c -> :sswitch_2f
        -0x2e547067 -> :sswitch_2e
        -0x29c35904 -> :sswitch_2d
        -0x276fb1e0 -> :sswitch_2c
        -0x1f60900b -> :sswitch_2b
        -0x19531a28 -> :sswitch_2a
        -0x159a1330 -> :sswitch_29
        -0x12dee18c -> :sswitch_28
        -0xcf87dff -> :sswitch_27
        -0xb138ceb -> :sswitch_26
        -0xa914958 -> :sswitch_25
        -0xa8d5a33 -> :sswitch_24
        -0x9cf62d1 -> :sswitch_23
        -0x5d9a8ae -> :sswitch_22
        -0x36313b9 -> :sswitch_21
        0x334844a -> :sswitch_20
        0xee774b9 -> :sswitch_1f
        0x100b5dd2 -> :sswitch_1e
        0x11a17525 -> :sswitch_1d
        0x11a86cff -> :sswitch_1c
        0x135b7527 -> :sswitch_1b
        0x1688bcfc -> :sswitch_1a
        0x1f93005b -> :sswitch_19
        0x20e4481b -> :sswitch_18
        0x272fa39d -> :sswitch_17
        0x28b417b3 -> :sswitch_16
        0x322ac56f -> :sswitch_15
        0x34548857 -> :sswitch_14
        0x359fd3fd -> :sswitch_13
        0x37ce7e92 -> :sswitch_12
        0x386d984e -> :sswitch_11
        0x3d58aac1 -> :sswitch_10
        0x424132d9 -> :sswitch_f
        0x42436c6b -> :sswitch_e
        0x47b51546 -> :sswitch_d
        0x485d9a4b -> :sswitch_c
        0x53b12729 -> :sswitch_b
        0x55d3a082 -> :sswitch_a
        0x59588628 -> :sswitch_9
        0x5ad680e1 -> :sswitch_8
        0x5b50c04e -> :sswitch_7
        0x6157eef0 -> :sswitch_6
        0x72ca1c55 -> :sswitch_5
        0x75c5dfed -> :sswitch_4
        0x7a4ca5e1 -> :sswitch_3
        0x7a65df9f -> :sswitch_2
        0x7f10d488 -> :sswitch_1
        0x7fdbfb94 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
