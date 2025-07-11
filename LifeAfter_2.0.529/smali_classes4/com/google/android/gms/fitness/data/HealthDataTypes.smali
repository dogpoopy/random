.class public final Lcom/google/android/gms/fitness/data/HealthDataTypes;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-fitness@@21.1.0"


# static fields
.field public static final AGGREGATE_BASAL_BODY_TEMPERATURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final AGGREGATE_BLOOD_GLUCOSE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_BLOOD_PRESSURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_BODY_TEMPERATURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final AGGREGATE_OXYGEN_SATURATION_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_BASAL_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/DataType;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_BLOOD_GLUCOSE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_BLOOD_PRESSURE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_CERVICAL_MUCUS:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_CERVICAL_POSITION:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_MENSTRUATION:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_OVULATION_TEST:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_OXYGEN_SATURATION:Lcom/google/android/gms/fitness/data/DataType;

.field public static final TYPE_VAGINAL_SPOTTING:Lcom/google/android/gms/fitness/data/DataType;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 1
    new-instance v6, Lcom/google/android/gms/fitness/data/DataType;

    const/4 v7, 0x4

    new-array v5, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_SYSTOLIC:Lcom/google/android/gms/fitness/data/Field;

    const/4 v8, 0x0

    aput-object v0, v5, v8

    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_DIASTOLIC:Lcom/google/android/gms/fitness/data/Field;

    const/4 v9, 0x1

    aput-object v0, v5, v9

    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_POSITION:Lcom/google/android/gms/fitness/data/Field;

    const/4 v10, 0x2

    aput-object v0, v5, v10

    sget-object v0, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_MEASUREMENT_LOCATION:Lcom/google/android/gms/fitness/data/Field;

    const/4 v11, 0x3

    aput-object v0, v5, v11

    const-string v1, "com.google.blood_pressure"

    const/4 v2, 0x1

    const-string v3, "https://www.googleapis.com/auth/fitness.blood_pressure.read"

    const-string v4, "https://www.googleapis.com/auth/fitness.blood_pressure.write"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v6, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BLOOD_PRESSURE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const/4 v1, 0x5

    new-array v2, v1, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_GLUCOSE_LEVEL:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_TEMPORAL_RELATION_TO_MEAL:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v9

    .line 2
    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_MEAL_TYPE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v10

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_TEMPORAL_RELATION_TO_SLEEP:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v11

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_GLUCOSE_SPECIMEN_SOURCE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    const-string v13, "com.google.blood_glucose"

    const/4 v14, 0x1

    const-string v15, "https://www.googleapis.com/auth/fitness.blood_glucose.read"

    const-string v16, "https://www.googleapis.com/auth/fitness.blood_glucose.write"

    move-object v12, v0

    move-object/from16 v17, v2

    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BLOOD_GLUCOSE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    new-array v2, v1, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v9

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_THERAPY_ADMINISTRATION_MODE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v10

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_SYSTEM:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v11

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_MEASUREMENT_METHOD:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v7

    const-string v18, "com.google.oxygen_saturation"

    const/16 v19, 0x1

    const-string v20, "https://www.googleapis.com/auth/fitness.oxygen_saturation.read"

    const-string v21, "https://www.googleapis.com/auth/fitness.oxygen_saturation.write"

    move-object/from16 v17, v0

    move-object/from16 v22, v2

    .line 3
    invoke-direct/range {v17 .. v22}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_OXYGEN_SATURATION:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    new-array v2, v10, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_TEMPERATURE_MEASUREMENT_LOCATION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v9

    const-string v13, "com.google.body.temperature"

    const-string v15, "https://www.googleapis.com/auth/fitness.body_temperature.read"

    const-string v16, "https://www.googleapis.com/auth/fitness.body_temperature.write"

    move-object v12, v0

    move-object/from16 v17, v2

    .line 4
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    new-array v2, v10, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_TEMPERATURE_MEASUREMENT_LOCATION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v9

    const-string v18, "com.google.body.temperature.basal"

    const-string v20, "https://www.googleapis.com/auth/fitness.reproductive_health.read"

    const-string v21, "https://www.googleapis.com/auth/fitness.reproductive_health.write"

    move-object/from16 v17, v0

    move-object/from16 v22, v2

    .line 5
    invoke-direct/range {v17 .. v22}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_BASAL_BODY_TEMPERATURE:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    new-array v2, v10, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_CERVICAL_MUCUS_TEXTURE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_CERVICAL_MUCUS_AMOUNT:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v9

    const-string v13, "com.google.cervical_mucus"

    const-string v15, "https://www.googleapis.com/auth/fitness.reproductive_health.read"

    const-string v16, "https://www.googleapis.com/auth/fitness.reproductive_health.write"

    move-object v12, v0

    move-object/from16 v17, v2

    .line 6
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_CERVICAL_MUCUS:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    new-array v2, v11, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_CERVICAL_POSITION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_CERVICAL_DILATION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v9

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_CERVICAL_FIRMNESS:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v10

    const-string v18, "com.google.cervical_position"

    const-string v20, "https://www.googleapis.com/auth/fitness.reproductive_health.read"

    const-string v21, "https://www.googleapis.com/auth/fitness.reproductive_health.write"

    move-object/from16 v17, v0

    move-object/from16 v22, v2

    .line 7
    invoke-direct/range {v17 .. v22}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_CERVICAL_POSITION:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    new-array v2, v9, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_MENSTRUAL_FLOW:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    const-string v13, "com.google.menstruation"

    const-string v15, "https://www.googleapis.com/auth/fitness.reproductive_health.read"

    const-string v16, "https://www.googleapis.com/auth/fitness.reproductive_health.write"

    move-object v12, v0

    move-object/from16 v17, v2

    .line 8
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_MENSTRUATION:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    new-array v2, v9, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OVULATION_TEST_RESULT:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    const-string v18, "com.google.ovulation_test"

    const-string v20, "https://www.googleapis.com/auth/fitness.reproductive_health.read"

    const-string v21, "https://www.googleapis.com/auth/fitness.reproductive_health.write"

    move-object/from16 v17, v0

    move-object/from16 v22, v2

    .line 9
    invoke-direct/range {v17 .. v22}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_OVULATION_TEST:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    new-array v2, v9, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v3, Lcom/google/android/gms/fitness/data/Field;->FIELD_OCCURRENCES:Lcom/google/android/gms/fitness/data/Field;

    aput-object v3, v2, v8

    const-string v13, "com.google.vaginal_spotting"

    const-string v15, "https://www.googleapis.com/auth/fitness.reproductive_health.read"

    const-string v16, "https://www.googleapis.com/auth/fitness.reproductive_health.write"

    move-object v12, v0

    move-object/from16 v17, v2

    .line 10
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->TYPE_VAGINAL_SPOTTING:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const/16 v2, 0x8

    new-array v3, v2, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_SYSTOLIC_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v8

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_SYSTOLIC_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v9

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_SYSTOLIC_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v10

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_DIASTOLIC_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v11

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_DIASTOLIC_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v7

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_DIASTOLIC_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v1

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_POSITION:Lcom/google/android/gms/fitness/data/Field;

    const/4 v5, 0x6

    aput-object v4, v3, v5

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_PRESSURE_MEASUREMENT_LOCATION:Lcom/google/android/gms/fitness/data/Field;

    const/4 v6, 0x7

    aput-object v4, v3, v6

    const-string v18, "com.google.blood_pressure.summary"

    const/16 v19, 0x2

    const-string v20, "https://www.googleapis.com/auth/fitness.blood_pressure.read"

    const-string v21, "https://www.googleapis.com/auth/fitness.blood_pressure.write"

    move-object/from16 v17, v0

    move-object/from16 v22, v3

    .line 11
    invoke-direct/range {v17 .. v22}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BLOOD_PRESSURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    new-array v3, v6, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v4, Lcom/google/android/gms/fitness/data/Field;->FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v8

    sget-object v4, Lcom/google/android/gms/fitness/data/Field;->FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v9

    sget-object v4, Lcom/google/android/gms/fitness/data/Field;->FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v10

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_TEMPORAL_RELATION_TO_MEAL:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v11

    sget-object v4, Lcom/google/android/gms/fitness/data/Field;->FIELD_MEAL_TYPE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v7

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_TEMPORAL_RELATION_TO_SLEEP:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v1

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BLOOD_GLUCOSE_SPECIMEN_SOURCE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v5

    const-string v13, "com.google.blood_glucose.summary"

    const/4 v14, 0x2

    const-string v15, "https://www.googleapis.com/auth/fitness.blood_glucose.read"

    const-string v16, "https://www.googleapis.com/auth/fitness.blood_glucose.write"

    move-object v12, v0

    move-object/from16 v17, v3

    .line 12
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BLOOD_GLUCOSE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    const/16 v3, 0x9

    new-array v3, v3, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v8

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v9

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v10

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v11

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v7

    sget-object v4, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_SUPPLEMENTAL_OXYGEN_FLOW_RATE_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v4, v3, v1

    sget-object v1, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_THERAPY_ADMINISTRATION_MODE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v1, v3, v5

    sget-object v1, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_SYSTEM:Lcom/google/android/gms/fitness/data/Field;

    aput-object v1, v3, v6

    sget-object v1, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_OXYGEN_SATURATION_MEASUREMENT_METHOD:Lcom/google/android/gms/fitness/data/Field;

    aput-object v1, v3, v2

    const-string v18, "com.google.oxygen_saturation.summary"

    const-string v20, "https://www.googleapis.com/auth/fitness.oxygen_saturation.read"

    const-string v21, "https://www.googleapis.com/auth/fitness.oxygen_saturation.write"

    move-object/from16 v17, v0

    move-object/from16 v22, v3

    .line 13
    invoke-direct/range {v17 .. v22}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_OXYGEN_SATURATION_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    new-array v1, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v2, Lcom/google/android/gms/fitness/data/Field;->FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v2, v1, v8

    sget-object v2, Lcom/google/android/gms/fitness/data/Field;->FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v2, v1, v9

    sget-object v2, Lcom/google/android/gms/fitness/data/Field;->FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v2, v1, v10

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_TEMPERATURE_MEASUREMENT_LOCATION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v2, v1, v11

    const-string v13, "com.google.body.temperature.summary"

    const-string v15, "https://www.googleapis.com/auth/fitness.body_temperature.read"

    const-string v16, "https://www.googleapis.com/auth/fitness.body_temperature.write"

    move-object v12, v0

    move-object/from16 v17, v1

    .line 14
    invoke-direct/range {v12 .. v17}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BODY_TEMPERATURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    new-instance v0, Lcom/google/android/gms/fitness/data/DataType;

    new-array v1, v7, [Lcom/google/android/gms/fitness/data/Field;

    sget-object v2, Lcom/google/android/gms/fitness/data/Field;->FIELD_AVERAGE:Lcom/google/android/gms/fitness/data/Field;

    aput-object v2, v1, v8

    sget-object v2, Lcom/google/android/gms/fitness/data/Field;->FIELD_MAX:Lcom/google/android/gms/fitness/data/Field;

    aput-object v2, v1, v9

    sget-object v2, Lcom/google/android/gms/fitness/data/Field;->FIELD_MIN:Lcom/google/android/gms/fitness/data/Field;

    aput-object v2, v1, v10

    sget-object v2, Lcom/google/android/gms/fitness/data/HealthFields;->FIELD_BODY_TEMPERATURE_MEASUREMENT_LOCATION:Lcom/google/android/gms/fitness/data/Field;

    aput-object v2, v1, v11

    const-string v18, "com.google.body.temperature.basal.summary"

    const-string v20, "https://www.googleapis.com/auth/fitness.reproductive_health.read"

    const-string v21, "https://www.googleapis.com/auth/fitness.reproductive_health.write"

    move-object/from16 v17, v0

    move-object/from16 v22, v1

    .line 15
    invoke-direct/range {v17 .. v22}, Lcom/google/android/gms/fitness/data/DataType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Lcom/google/android/gms/fitness/data/Field;)V

    sput-object v0, Lcom/google/android/gms/fitness/data/HealthDataTypes;->AGGREGATE_BASAL_BODY_TEMPERATURE_SUMMARY:Lcom/google/android/gms/fitness/data/DataType;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
