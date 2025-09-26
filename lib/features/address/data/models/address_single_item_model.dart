import 'package:flutter/material.dart';

class AddressSingleItemModel {
  final String type;
  final String address;
  final String description;
  final String phoneNumber;
  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final int id;

  AddressSingleItemModel({
    required this.type,
    required this.address,
    required this.description,
    required this.phoneNumber,
    required this.onEdit,
    required this.onDelete,
    required this.id,
  });
}
